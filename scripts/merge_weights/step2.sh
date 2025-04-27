export PYTHONPATH="."
tag='global_step703'

python scripts/merge_weights/merge_lora_weights.py \
    --version MBZUAI/GLaMM-GranD-Pretrained \
    --weight /workspace/LEGION/train-output/Legion/ckpt_model_ce_1.0_dice_0.2_bce_0.4/$tag/pytorch_model.bin \
    --save_path /workspace/LEGION/train-output/merged/$tag \
    --vision_pretrained  /workspace/sam_vit_h_4b8939.pth