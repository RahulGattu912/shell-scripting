#!/bin/bash

square(){
    echo $(( $1 * $1))
}

res=$(square $1)
echo "The square of $1 is $res."