#!/bin/sh

API="https://blockchain.info/ticker"

quote=$(curl -sf $API | jq '.USD.last')

echo " $quote" 
