export DATA_DIR1="/data/twkim/diffusion/personalization/collected/images/pet_cat1"
export DATA_DIR2="/data/twkim/diffusion/personalization/collected/images/pet_dog1"
export MODEL_NAME="runwayml/stable-diffusion-v1-5"
export CUDA_VISIBLE_DEVICES=1;
accelerate launch --main_process_port 2731  generate_multi.py \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --train_data_dir1=$DATA_DIR1 \
  --train_data_dir2=$DATA_DIR2 \
  --placeholder_token1="<pet_cat1>" \
  --placeholder_token2="<pet_dog1>" \
  --resolution=512 \
  --output_dir="results/multi/pet_cat1_pet_dog1" \
  --seed=1234 \
  --mask_tokens="[MASK]" \
  --resume_unet_path='saved_models/dreambooth_models/multi/tmp_multi_learned_embeds/checkpoints/checkpoint-2000/unet_s2000.pt' \
  --resume_text_encoder_path='saved_models/dreambooth_models/multi/tmp_multi_learned_embeds/checkpoints/checkpoint-2000/text_encoder_s2000.pt' \
  --prior_concept1='cat' \
  --prior_concept2='dog' \
  --include_prior_concept=1 \
  --prompt_type='two_pets' \
  --eval_batch_size=20 \
  --num_images_per_prompt=15

