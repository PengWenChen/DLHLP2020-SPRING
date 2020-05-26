python  ./run_squad.py \
  --model_type albert \
	--do_eval \
	--model_name_or_path $1 \
  --train_file $2/hw4-3_train.json \
	--predict_file $2/hw4-3_test.json \
	--max_seq_length 384 \
	--per_gpu_eval_batch_size 100 \
  --output_dir $1 \
  --output_file_path $3 \
