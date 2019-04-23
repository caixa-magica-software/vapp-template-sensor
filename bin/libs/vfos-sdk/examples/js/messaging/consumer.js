#!/usr/bin/env node

const vfosMessagingPubsub = require('./sdk-include.js').messaging;

var broker = "amqp://rumgcxja:cpCfei7G2_Q19JyF18t36glpsNsMJZIE@impala.rmq.cloudamqp.com/rumgcxja";
var userName = "archiver1";
var domain = "pt.vfos";
var routingKeys = ["#"];

var communications = new vfosMessagingPubsub(broker, userName, domain, routingKeys);

communications.receivePublication();
communications.receivePrivateMessage();