import oscP5.*;
import netP5.*;

OscP5 oscP5Receiver;
int lastState = 0;
int currentState = 0;

void setup() {
		size(400, 400);
		oscP5Receiver = new OscP5(this, 12000);
}

void draw() {
}

void oscEvent(OscMessage message) {
		lastState = currentState;
		currentState = (int) message.get(0).floatValue();
		println(currentState);
}
