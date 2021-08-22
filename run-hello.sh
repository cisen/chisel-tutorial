#!/usr/bin/env bash
args=$@
sbt "test:runMain hello.Launcher $args"
