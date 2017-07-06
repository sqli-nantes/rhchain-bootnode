#!/bin/bash

BOOTNODE=./bin/bootnode

$BOOTNODE -v5 -nodekey bootnode.priv -verbosity 9 -addr ":30301"
