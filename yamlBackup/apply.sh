#!/bin/bash

ns=($(ls -d */*/*))
for kd in "${ns[@]}"; do
  kubectl apply -f $kd
done