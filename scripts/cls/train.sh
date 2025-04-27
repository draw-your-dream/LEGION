export PYTHONPATH=.


python scripts/cls/train.py \
  --version /workspace/LEGION/output/global_step703 \
  --vision_pretrained /workspace/sam_vit_h_4b8939.pth \
  --exp_name 'Legion' \
  --lr 1e-3 \
  --pretrained \
  --epochs 3 \
  --batch_size 64 \
  --epoch_samples 720119 \
  --steps_per_epoch 5626 \
  --save_path "/path/to/save" \
  --train_json_file /workspace/LEGION/data/train/annotations/train.json \
  --test_json_file /workspace/LEGION/data/test/annotations/test.json \
  --data_base_train /workspace/LEGION/data/train/images \
  --data_base_test /workspace/LEGION/data/test/images \
  --wandb_log