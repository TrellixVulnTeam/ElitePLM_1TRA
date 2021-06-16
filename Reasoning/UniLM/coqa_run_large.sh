# run fine-tuning
DATA_DIR=./data/coqa
OUTPUT_DIR=coqa-output
MODEL_RECOVER_PATH=unilm1-large-cased.bin
export PYTORCH_PRETRAINED_BERT_CACHE=./BERT/bert-large-cased
export CUDA_VISIBLE_DEVICES=0
python src/run_coqa.py --do_train --do_eval \
  --bert_model bert-large-cased \
  --data_dir ${DATA_DIR} \
  --output_dir ${OUTPUT_DIR}/bert_save \
  --model_recover_path ${MODEL_RECOVER_PATH} \
  --max_seq_length 64  \
  --train_batch_size 8 --gradient_accumulation_steps 1 \
  --learning_rate 2e-6 --warmup_proportion 0.1  \
  --num_train_epochs 10  

