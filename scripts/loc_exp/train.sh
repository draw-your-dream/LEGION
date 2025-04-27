export MASTER_PORT=12346
export PYTHONPATH=.

deepspeed --master_port $MASTER_PORT scripts/loc_exp/train.py \
  --version '/home/picaa/models/MBZUAI/GLaMM-GranD-Pretrained' \
  --dataset_dir ./data/ \
  --vision_pretrained /home/picaa/models/sam_vit_h_4b8939.pth \
  --exp_name 'Legion' \
  --lora_r 8 \
  --lr 1e-4 \
  --ce_loss_weight 1.0 \
  --dice_loss_weight 0.2 \
  --bce_loss_weight 0.4 \
  --pretrained \
  --use_segm_data \
  --seg_dataset "Legion" \
  --segm_sample_rates "1" \
  --val_dataset "Legion" \
  --epochs 3 \
  --batch_size 16 \
  --epoch_samples 11236 \
  --steps_per_epoch 703 \
  --wandb_log