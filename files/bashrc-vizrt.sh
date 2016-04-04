#!/bin/bash

export ARSVNUSER=jne
export ARBZRUSER=jne

export ONEUSER=user:user
export ONEHOST=one-dev-sles

export RT_ROOT=/home/jne/time_reports
export PERL5LIB=/opt/ardome/lib/perl:$PERL5LIB

alias current="vim $HOME/time_reports/current"
alias lt="rt ls"
alias month="rt dig"
alias punch="rt punch"
alias lunch="rt break"
