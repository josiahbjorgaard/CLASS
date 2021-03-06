#!/bin/bash
#This is a bash script to run the set-up of KOMPASS
cd iac
terraform init <<< 'yes'
terraform apply <<< 'yes'
./finish_eks_setup.sh
cd ../frontend
./setup-frontend.sh
cd ../monitoring
./setup-monitor.sh
cd ../autoscaling
./setup-autoscaler.sh
cd ../
echo 'Complete'
