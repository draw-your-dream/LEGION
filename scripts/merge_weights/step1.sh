tag='global_step703'
python /workspace/LEGION/train-output/Legion/ckpt_model_ce_1.0_dice_0.2_bce_0.4/zero_to_fp32.py \
       /workspace/LEGION/train-output/Legion/ckpt_model_ce_1.0_dice_0.2_bce_0.4 \
       /workspace/LEGION/train-output/Legion/ckpt_model_ce_1.0_dice_0.2_bce_0.4/$tag/pytorch_model.bin \
       --tag "$tag"
 