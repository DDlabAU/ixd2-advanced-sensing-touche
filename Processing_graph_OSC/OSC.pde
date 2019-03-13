import netP5.*;
import oscP5.*;

OscP5 oscP5Sender = new OscP5(this, 9000);
NetAddress destination = new NetAddress("127.0.0.1", 12000);


void sendOsc(float data) {
  println(data);
  OscMessage message = new OscMessage("/currentState");
  message.add(data);
  oscP5Sender.send(message, destination);
}
