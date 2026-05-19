#!/bin/bash

echo "=========================================================="
echo " Starting Deep Learning Model Evaluation Benchmark Suite  "
echo "=========================================================="

python -m test --model danq --dataset_type bottleneck --test_path test_dataset/binary_bottleneck_final_test.csv --num_classes 2 --model_path checkpoints/danq_bottleneck_best_model.pt
python -m test --model danq --dataset_type DenisovanvsNeanderthal --test_path test_dataset/binary_DenisovanvsNeanderthal_final_test.csv --num_classes 2 --model_path checkpoints/danq_DenisovanvsNeanderthal_best_model.pt
python -m test --model danq --dataset_type HumanvsNeanderthal --test_path test_dataset/binary_HumanvsNeanderthal_final_test.csv --num_classes 2 --model_path checkpoints/danq_HumanvsNeanderthal_best_model.pt
python -m test --model danq --dataset_type longerbp --test_path test_dataset/binary_longerbp_final_test.csv --num_classes 2 --model_path checkpoints/danq_longerbp_best_model.pt
python -m test --model danq --dataset_type original --test_path test_dataset/binary_original_final_test.csv --num_classes 2 --model_path checkpoints/danq_original_best_model.pt
python -m test --model danq --dataset_type multiclass --test_path test_dataset/multiclass_original_final_test.csv --num_classes 3 --model_path checkpoints/danq_multiclass_best_model.pt

python -m test --model cnn --dataset_type bottleneck --test_path test_dataset/binary_bottleneck_final_test.csv --num_classes 2 --model_path checkpoints/cnn_bottleneck_best_model.pt
python -m test --model cnn --dataset_type DenisovanvsNeanderthal --test_path test_dataset/binary_DenisovanvsNeanderthal_final_test.csv --num_classes 2 --model_path checkpoints/cnn_DenisovanvsNeanderthal_best_model.pt
python -m test --model cnn --dataset_type HumanvsNeanderthal --test_path test_dataset/binary_HumanvsNeanderthal_final_test.csv --num_classes 2 --model_path checkpoints/cnn_HumanvsNeanderthal_best_model.pt
python -m test --model cnn --dataset_type longerbp --test_path test_dataset/binary_longerbp_final_test.csv --num_classes 2 --model_path checkpoints/cnn_longerbp_best_model.pt
python -m test --model cnn --dataset_type original --test_path test_dataset/binary_original_final_test.csv --num_classes 2 --model_path checkpoints/cnn_original_best_model.pt
python -m test --model cnn --dataset_type multiclass --test_path test_dataset/multiclass_original_final_test.csv --num_classes 3 --model_path checkpoints/cnn_multiclass_best_model.pt

python -m test --model rnn --dataset_type DenisovanvsNeanderthal --test_path test_dataset/binary_DenisovanvsNeanderthal_final_test.csv --num_classes 2 --model_path checkpoints/rnn_DenisovanvsNeanderthal_best_model.pt
python -m test --model rnn --dataset_type HumanvsNeanderthal --test_path test_dataset/binary_HumanvsNeanderthal_final_test.csv --num_classes 2 --model_path checkpoints/rnn_HumanvsNeanderthal_best_model.pt
python -m test --model rnn --dataset_type longerbp --test_path test_dataset/binary_longerbp_final_test.csv --num_classes 2 --model_path checkpoints/rnn_longerbp_best_model.pt
python -m test --model rnn --dataset_type original --test_path test_dataset/binary_original_final_test.csv --num_classes 2 --model_path checkpoints/rnn_original_best_model.pt
python -m test --model rnn --dataset_type multiclass --test_path test_dataset/multiclass_original_final_test.csv --num_classes 3 --model_path checkpoints/rnn_multiclass_best_model.pt

python -m test --model cnn_no_pooling --dataset_type bottleneck --test_path test_dataset/binary_bottleneck_final_test.csv --num_classes 2 --model_path checkpoints/cnn_no_pooling_bottleneck_best_model.pt
python -m test --model cnn_no_pooling --dataset_type DenisovanvsNeanderthal --test_path test_dataset/binary_DenisovanvsNeanderthal_final_test.csv --num_classes 2 --model_path checkpoints/cnn_no_pooling_DenisovanvsNeanderthal_best_model.pt
python -m test --model cnn_no_pooling --dataset_type HumanvsNeanderthal --test_path test_dataset/binary_HumanvsNeanderthal_final_test.csv --num_classes 2 --model_path checkpoints/cnn_no_pooling_HumanvsNeanderthal_best_model.pt
python -m test --model cnn_no_pooling --dataset_type multiclass --test_path test_dataset/multiclass_original_final_test.csv --num_classes 3 --model_path checkpoints/cnn_no_pooling_multiclass_best_model.pt

echo "=========================================================="
echo " All evaluation tasks have finished running successfully! "
echo "=========================================================="