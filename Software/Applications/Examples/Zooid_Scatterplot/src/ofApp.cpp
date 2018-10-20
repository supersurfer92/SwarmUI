#include "ofApp.h"

#define dimensionX 0.8128f
#define dimensionY 0.508f

#define robotSpacing 0.02f // initial spacing between robots in inactive/waiting mode
#define robotSize 0.027f // approximate robot radius

#define NB_ROBOTS 10

//--------------------------------------------------------------
void ofApp::setup(){
    ofSetFrameRate(60);
    ofBackground(200, 200, 200);
    zooidManager.initialize(ofGetWidth(), ofGetHeight());
    zooidManager.useRealWorldCoordinates();

    isUpdated = false;
    isFirstTime =true;
    
    currentFrame = NULL;
    currentFrameIndex = 0;
    isDraggingRobot = false;
    selectedRobot = -1;
    
    
    myfont.load("verdana.ttf", 20);
    initializeColors();
    initializeCharts();
    
}

//--------------------------------------------------------------
void ofApp::update() {
	//acquire new robot data
	if (zooidManager.receiveInformation())
	{
        if(isFirstTime) { // set initial positions in frame 0
            initializeFrame0();
            
            isFirstTime = false;
        }
        
        for(int i=0; i < NB_ROBOTS; i++){
            ofVec2f pos = zooidManager.getZooidPosition(i);
            
            if( pos.x < (dimensionX/2.000f)) {
                
                frames.at(0).chartNum.at(i)=0;
                frames.at(0).positions.at(i)=scatterPlot1.at(i);
                ofVec2f tempPos = ofVec2f(ofMap(frames.at(0).positions.at(i).x, 0, 100,  0.400f, 0.050f), ofMap(frames.at(0).positions.at(i).y, 0, 80, 0.100f, 0.400f));
                
                zooidManager.updateZooid(i, tempPos, ofColor::blue);
            }
            else{
                
                frames.at(0).chartNum.at(i)=1;
                frames.at(0).positions.at(i)=scatterPlot2.at(i);
                ofVec2f tempPos = ofVec2f(ofMap(frames.at(0).positions.at(i).x, 0, 100, 0.400f, 0.050f)+ (dimensionX/2.000f), ofMap(frames.at(0).positions.at(i).y, 0, 80, 0.100f, 0.400f));
                
                zooidManager.updateZooid(i, tempPos, ofColor::red);
            }
        }
        
        for(int i = NB_ROBOTS;i<zooidManager.getNbZooids();i++){
            
            float x, y;
            
            int k = i - NB_ROBOTS;
            float s = robotSize + robotSpacing;
            
            y = dimensionY;
            if (k%2 == 1) {
                // center/right
                x = dimensionX / 2 + s*(k+1)/2;
            } else {
                // left
                x = dimensionX / 2 - s*(k)/2;
            }
            
            zooidManager.updateZooid(i, ofVec2f(x,y), ofColor::black);
        }
        zooidManager.setAssignmentMode(AssignmentMode::NaiveAssignment);

        //don't forget to send the updates
		zooidManager.sendUpdates();
        isUpdated = true;
        
        
	}
}

//--------------------------------------------------------------
void ofApp::draw(){

}

//--------------------------------------------------------------
void ofApp::scaleToRobotWorld() {
	ofScale(ofGetWidth() / dimensionX, ofGetHeight() / dimensionY);
	ofRotate(180.0f, 0.0, 0.0f, 1.0f);
	ofTranslate(-dimensionX, -dimensionY);
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    
    if (key == 'a') { // add a new frame at the end
        
        currentFrameIndex = frames.size();
        addFrame();
        
        
    }
    
    if (key == 'i') { // insert a new frame after the current frame
        
        currentFrameIndex ++;
        insertFrame();
        
        
    }
    
    if (key=='g'){
        
        currentFrameIndex ++;
        insertFrameFromRobots();
    }
    
    if (key == 'p') { // send current frame to robots
    
        
        sendCurrentFrameAsGoals();
        
        
    }
    
    if( key == 's') {  //save
        
        saveFrames();
    }
    
    if (key== 'o') { //open
        
        //Open the Open File Dialog
        ofFileDialogResult openFileResult= ofSystemLoadDialog("Select a swarm keyframe xml file");
        
        //Check if the user opened a file
        if (openFileResult.bSuccess){
            
            ofLogVerbose("User selected a file");
            
            //We have a file, check it and process it
            processOpenFileSelection(openFileResult);
            
        }else {
            ofLogVerbose("User hit cancel");
        }
    }
    
    else if( key == '1' ) {
        
        currentFrame=&(frames.at(0));
        currentFrameIndex = 0;
        
    }
    
    else if( key == '2' ) {
        
        if (frames.size()>1)
            currentFrame=&(frames.at(1));
             currentFrameIndex = 1;
        
    }
    else if( key == '3' ) {
        
        if (frames.size()>2)
            currentFrame=&(frames.at(2));
            currentFrameIndex = 2;
        
    }
    else if( key == '4' ) {
        
        if (frames.size()>3)
            currentFrame=&(frames.at(3));
        currentFrameIndex = 3;
        
    }
    else if( key == '5' ) {
        
        if (frames.size()>4)
            currentFrame=&(frames.at(4));
        currentFrameIndex = 4;
        
    }
    else if( key == '6' ) {
        
        if (frames.size()>5)
            currentFrame=&(frames.at(5));
        currentFrameIndex = 5;
        
    }
    else if( key == '7' ) {
        
        if (frames.size()>6)
            currentFrame=&(frames.at(6));
        currentFrameIndex = 6;
        
    }
    else if( key == '8' ) {
        
        if (frames.size()>7)
            currentFrame=&(frames.at(7));
        currentFrameIndex = 7;
        
    }
    else if( key == '9' ) {
        
        if (frames.size()>8)
            currentFrame=&(frames.at(8));
        currentFrameIndex = 8;
        
    }
    else if( key == '0' ) {
        
        if (frames.size()>9)
            currentFrame=&(frames.at(9));
        currentFrameIndex = 9;
        
    }
    else if( key == '=') {
        
        if (currentFrameIndex < (frames.size()-1)) {
            currentFrameIndex++;
            currentFrame=&(frames.at(currentFrameIndex));
        }
        else {
            currentFrameIndex=0;
            currentFrame=&(frames.at(currentFrameIndex));
        }
        
        
        
    }
    else if( key == '-' ) {
        
        if (currentFrameIndex > 0) {
            currentFrameIndex--;
            currentFrame=&(frames.at(currentFrameIndex));
        }
        else {
            currentFrameIndex=frames.size()-1;
            currentFrame=&(frames.at(currentFrameIndex));
        }
        
    }
    else if( key == OF_KEY_RIGHT ) {
        
        if (currentFrameIndex < (frames.size()-1)) {
            currentFrameIndex++;
            currentFrame=&(frames.at(currentFrameIndex));
        }
        else {
            currentFrameIndex=0;
            currentFrame=&(frames.at(currentFrameIndex));
        }
        
         sendCurrentFrameAsGoals();
        
        
        
    }
    else if( key == OF_KEY_LEFT ) {
        
        if (currentFrameIndex > 0) {
            currentFrameIndex--;
            currentFrame=&(frames.at(currentFrameIndex));
        }
        else {
            currentFrameIndex=frames.size()-1;
            currentFrame=&(frames.at(currentFrameIndex));
        }
        
         sendCurrentFrameAsGoals();
        
    }
    
    else if( key == 'd' ) { //delete
        
        
            
            if (frames.size() > 1) {
                frames.erase(frames.begin() + currentFrameIndex);
                if(currentFrameIndex > 0){
                    currentFrameIndex--;
                }
                currentFrame=&(frames.at(currentFrameIndex));
            }
        
            
        
    }
    
}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){
    
}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){
    float mouseX = dimensionX - (float)x / ofGetWidth()*dimensionX;
    float mouseY = dimensionY - (float)y / ofGetHeight()*dimensionY;
    
    if (isDraggingRobot) {
        currentFrame->positions.at(selectedRobot).x = mouseX;
        currentFrame->positions.at(selectedRobot).y = mouseY;
    }
}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button) {
    float mouseX = dimensionX - (float)x / ofGetWidth()*dimensionX;
    float mouseY = dimensionY - (float)y / ofGetHeight()*dimensionY;
    
    selectedRobot = touchRobotTest(mouseX,mouseY);
    if (selectedRobot >-1) {
        isDraggingRobot = true;
        
    }
    
}


//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){
    isDraggingRobot = false;

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){
    
}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){
    
}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){
    
}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){
    
}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){
    
}

//--------------------------------------------------------------
void ofApp::processOpenFileSelection(ofFileDialogResult openFileResult){
    
    ofLogVerbose("getName(): "  + openFileResult.getName());
    ofLogVerbose("getPath(): "  + openFileResult.getPath());
    
    cout<<openFileResult.getPath()<<endl;
    
    ofFile file;
    file.open(openFileResult.getPath());
    
    if (file.exists()){
        //delete previous info
        frames.clear();
        currentFrame = NULL;
        currentFrameIndex = 0;
        
        ofLogVerbose("The file exists - now checking the type via file extension");
        string fileExtension = ofToUpper(file.getExtension());
        
        //We only want images
        if (fileExtension == "XML" || fileExtension == "xml") {
            
            
            ofBuffer buffer = file.readToBuffer(); // read to a buffer
            
            ofXml openedXML;
            openedXML.load(openFileResult.getPath()); // now get the buffer as a string and make XML
            
                    
            //if(openedXML.exists("frames")){
                //openedXML.setTo("frames");
            cout<< " frames" << endl;
                int numFrames = openedXML.getNumChildren();
                cout<< numFrames << endl;
                for(int i = 0; i <numFrames; i++){
                    frame tempFrame;
                    
                    openedXML.setToChild(i);
                    // set our "current" robot to the first one
                    
                    int numRobots = openedXML.getNumChildren();
                    
                    for(int j = 0; j <numRobots; j++){
                    
                        openedXML.setToChild(j);
                        
                            float x = openedXML.getValue<float>("X");
                            float y = openedXML.getValue<float>("Y");
                            ofVec2f v(x, y);
                            int r = openedXML.getValue<int>("R");
                            int g = openedXML.getValue<int>("G");
                            int b = openedXML.getValue<int>("B");
                            ofColor color = ofColor(r,g,b);
                            float orientation = openedXML.getValue<float>("Orientation");
                            
                            //dragPts.push_back(v);
                            tempFrame.positions.push_back(v);
                            tempFrame.orientations.push_back(orientation);
                            tempFrame.colors.push_back(color);
                        
                        openedXML.setToParent();
                    }
                    
                        
                    frames.push_back(tempFrame);
                        
                        // go back up
                        openedXML.setToParent();
                    
                    }
                    
                }
        
                
                if (frames.size() > 0) {
                    currentFrame = &(frames.at(0));
                    currentFrameIndex = 0;
                    
                }
            
            //}
        }
  
    
    
}

void ofApp::saveFrames(){
    
    
    ofXml framesAndPos;
    framesAndPos.addChild("frames");
    framesAndPos.setTo("frames");
    
    for(int i = 0; i < frames.size(); i++){
        
        framesAndPos.addChild("frame" + ofToString(i));
        framesAndPos.setToChild(i);
        //framesAndPos.setTo("frame[" + ofToString(i) + "]");
        
        for (int j=0; j <frames.at(i).positions.size(); j++) {
            framesAndPos.addChild("robot" + ofToString(j));
            framesAndPos.setToChild(j);
            
            float tempX = frames.at(i).positions.at(j).x;
            framesAndPos.addValue("X", tempX);
            
            float tempY = frames.at(i).positions.at(j).y;
            framesAndPos.addValue("Y", tempY);
            
            int tempR = frames.at(i).colors.at(j).r;
            framesAndPos.addValue("R", tempR);
            
            int tempG = frames.at(i).colors.at(j).g;
            framesAndPos.addValue("G", tempG);
            
            int tempB = frames.at(i).colors.at(j).b;
            framesAndPos.addValue("B", tempB);
            
            float tempOr = frames.at(i).orientations.at(j);
            framesAndPos.addValue("Orientation", tempOr);
           
            
            framesAndPos.setToParent();
        }
        
        framesAndPos.setToParent();
        
        //setTo("frames");
    }
    
    ofFileDialogResult saveFileResult = ofSystemSaveDialog(ofGetTimestampString() + ".xml", "Save your file");
    if (saveFileResult.bSuccess){
        framesAndPos.save(saveFileResult.filePath);
    }
   
    //framesAndPos.save("temp.xml");
    
}


//--------------------------------------------------------------
void ofApp::initializeFrame0(){
    frame tempFrame;
    
    for(int i =0; i < zooidManager.getNbZooids(); i++){
        tempFrame.positions.push_back(scatterPlot1.at(i));
        tempFrame.orientations.push_back(90);
        tempFrame.colors.push_back(colorsList.at(i));
        tempFrame.chartNum.push_back(0);
        
    }
    
    frames.push_back(tempFrame);
    currentFrame=&(frames.at(0));
    
}

void ofApp::initializeCharts(){
    
   
    scatterPlot2.push_back(ofVec2f(90,70));
    scatterPlot2.push_back(ofVec2f(83,12));
    scatterPlot2.push_back(ofVec2f(82,70));
    scatterPlot2.push_back(ofVec2f(82,60));
    scatterPlot2.push_back(ofVec2f(61,68));
    scatterPlot2.push_back(ofVec2f(52,65));
    scatterPlot2.push_back(ofVec2f(44,18));
    scatterPlot2.push_back(ofVec2f(40,70));
    scatterPlot2.push_back(ofVec2f(34,58));
    scatterPlot2.push_back(ofVec2f(30,40));
    scatterPlot2.push_back(ofVec2f(28,44));
    scatterPlot2.push_back(ofVec2f(26,28));
    scatterPlot2.push_back(ofVec2f(25,38));
    scatterPlot2.push_back(ofVec2f(20,56));
    scatterPlot2.push_back(ofVec2f(20,22));
    scatterPlot2.push_back(ofVec2f(18,28));
    scatterPlot2.push_back(ofVec2f(10,22));
	scatterPlot2.push_back(ofVec2f(0,0));
	scatterPlot2.push_back(ofVec2f(0,0));
	scatterPlot2.push_back(ofVec2f(0,0));
	scatterPlot2.push_back(ofVec2f(0,0));
    
    

	/*scatterPlot1.push_back(ofVec2f(0, 0));
	scatterPlot1.push_back(ofVec2f(0, 80));
	scatterPlot1.push_back(ofVec2f(100, 0));
	scatterPlot1.push_back(ofVec2f(100, 80));
	scatterPlot1.push_back(ofVec2f(0, 0));
	scatterPlot1.push_back(ofVec2f(0, 80));
	scatterPlot1.push_back(ofVec2f(100, 0));
	scatterPlot1.push_back(ofVec2f(100, 80));
	scatterPlot1.push_back(ofVec2f(0, 0));
	scatterPlot1.push_back(ofVec2f(0, 80));
	scatterPlot1.push_back(ofVec2f(100, 0));
	scatterPlot1.push_back(ofVec2f(100, 80));
	scatterPlot1.push_back(ofVec2f(0, 0));
	scatterPlot1.push_back(ofVec2f(0, 80));
	scatterPlot1.push_back(ofVec2f(100, 0));
	scatterPlot1.push_back(ofVec2f(100, 80));
	scatterPlot1.push_back(ofVec2f(0, 0));
	scatterPlot1.push_back(ofVec2f(0, 80));
	scatterPlot1.push_back(ofVec2f(100, 0));
	scatterPlot1.push_back(ofVec2f(100, 80));
	scatterPlot1.push_back(ofVec2f(0, 0));
	*/

	
    scatterPlot1.push_back(ofVec2f(96,16));
    scatterPlot1.push_back(ofVec2f(83,12));
    scatterPlot1.push_back(ofVec2f(79,20));
    scatterPlot1.push_back(ofVec2f(76,7));
    scatterPlot1.push_back(ofVec2f(65,11));
    scatterPlot1.push_back(ofVec2f(63,18));
    scatterPlot1.push_back(ofVec2f(56,8));
    scatterPlot1.push_back(ofVec2f(54,28));
    scatterPlot1.push_back(ofVec2f(52,15));
    scatterPlot1.push_back(ofVec2f(44,22));
    scatterPlot1.push_back(ofVec2f(43,40));
    scatterPlot1.push_back(ofVec2f(35,57));
    scatterPlot1.push_back(ofVec2f(33,16));
    scatterPlot1.push_back(ofVec2f(31,30));
    scatterPlot1.push_back(ofVec2f(39,43));
    scatterPlot1.push_back(ofVec2f(15,38));
    scatterPlot1.push_back(ofVec2f(12,65));
    scatterPlot1.push_back(ofVec2f(0,0));
    scatterPlot1.push_back(ofVec2f(0,0));
    scatterPlot1.push_back(ofVec2f(0,0));
    scatterPlot1.push_back(ofVec2f(0,0));
    scatterPlot1.push_back(ofVec2f(0,0));
	
    
	/*scatterPlot2.push_back(ofVec2f(0, 0));
	scatterPlot2.push_back(ofVec2f(100, 0));
	scatterPlot2.push_back(ofVec2f(0, 80));
	scatterPlot2.push_back(ofVec2f(100, 80));
	scatterPlot2.push_back(ofVec2f(0, 0));
	scatterPlot2.push_back(ofVec2f(100, 0));
	scatterPlot2.push_back(ofVec2f(0, 80));
	scatterPlot2.push_back(ofVec2f(100, 80));
	scatterPlot2.push_back(ofVec2f(0, 0));
	scatterPlot2.push_back(ofVec2f(100, 0));
	scatterPlot2.push_back(ofVec2f(0, 80));
	scatterPlot2.push_back(ofVec2f(100, 80));
	scatterPlot2.push_back(ofVec2f(0, 0));
	scatterPlot2.push_back(ofVec2f(100, 0));
	scatterPlot2.push_back(ofVec2f(0, 80));
	scatterPlot2.push_back(ofVec2f(100, 80));
	scatterPlot2.push_back(ofVec2f(0, 0));
	scatterPlot2.push_back(ofVec2f(100, 0));
	scatterPlot2.push_back(ofVec2f(0, 80));
	scatterPlot2.push_back(ofVec2f(100, 80));
	scatterPlot2.push_back(ofVec2f(0, 0));
	scatterPlot2.push_back(ofVec2f(100, 0));*/
	/*
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    barChart.push_back(ofVec2f(100,100));
    */
    
}

void ofApp::addFrame(){
    frame tempFrame;
    
    for(int i =0; i <zooidManager.getNbZooids(); i++){
        tempFrame.positions.push_back(frames.back().positions.at(i));
        tempFrame.orientations.push_back(frames.back().orientations.at(i));
        tempFrame.colors.push_back(frames.back().colors.at(i));
        
    }
    
    frames.push_back(tempFrame);
    currentFrame=&(frames.back());
    
}

void ofApp::insertFrame(){
    
    frame tempFrame;
    
    for(int i =0; i <zooidManager.getNbZooids(); i++){
        tempFrame.positions.push_back(currentFrame->positions.at(i));
        tempFrame.orientations.push_back(currentFrame->orientations.at(i));
        tempFrame.colors.push_back(currentFrame->colors.at(i));
        
    }
    
    frames.insert(frames.begin() + currentFrameIndex,tempFrame);
    currentFrame=&(frames.at(currentFrameIndex));

}

void ofApp::insertFrameFromRobots(){
    frame tempFrame;
    
    for(int i =0; i <zooidManager.getNbZooids(); i++){
        tempFrame.positions.push_back(zooidManager.getZooidPosition(i));
        tempFrame.orientations.push_back(zooidManager.getZooidOrientation(i));
        tempFrame.colors.push_back(ofColor(100, 0, 0));
    }
    
    frames.insert(frames.begin() + currentFrameIndex,tempFrame);
    currentFrame=&(frames.at(currentFrameIndex));
    
}

int ofApp::touchRobotTest(float x, float y) {
    
    if (currentFrame) {
        
        for(int i = 0; i< currentFrame->positions.size(); i++){
            ofVec2f pos = currentFrame->positions.at(i);
            ofVec2f p2(x,y);
            if ((pos.distance(p2))<.01) return i;
            
        }
        
        
    }
    
    return -1;
}

void ofApp::initializeColors(){
    
    for(int i= 0; i <100; i++){
        
        
        colorsList.push_back(ofColor(ofRandom( 0, 255 ), ofRandom( 0, 255 ), ofRandom( 0, 255 ) ));
    }
}

void ofApp::sendCurrentFrameAsGoals( ){
    
    for(int i = 0; i< currentFrame->positions.size(); i++){
        ofVec2f pos = currentFrame->positions.at(i);
      
        zooidManager.updateZooid(i, pos, currentFrame->orientations.at(i));
        zooidManager.setZooidColor(i, currentFrame->colors.at(i));
    }
    
    //don't forget to send the updates
    zooidManager.sendUpdates();
}
