#!/bin/bash

# Activate your python environment, if you're using one
# conda activate vot

torchrun --nproc_per_node 8 ../train.py \
--learning_rate 0.0001 \
--batch_size 4 \
--epochs 100 \
--data_paths '/proj/cloudrobotics-nest/users/x_shuji/OccluManip/Ball/Double/20230817_2/robotCR19' '/proj/cloudrobotics-nest/users/x_shuji/OccluManip/Ball/Double/20230818_1/robotCR19' '/proj/cloudrobotics-nest/users/x_shuji/OccluManip/Ball/Double/20230818_2/robotCR19' \
--test_paths '/proj/cloudrobotics-nest/users/x_shuji/OccluManip/Ball/Double/20230817_2/robotCR19/Test' '/proj/cloudrobotics-nest/users/x_shuji/OccluManip/Ball/Double/20230818_1/robotCR19/Test' '/proj/cloudrobotics-nest/users/x_shuji/OccluManip/Ball/Double/20230818_2/robotCR19/Test' \
--ckpt_path '/proj/cloudrobotics-nest/users/x_shuji/OccluManip_models/Ball/Double' 