# 35GiB
CUDA_VISIBLE_DEVICES=0 \
swift sft \
    --model Qwen/Qwen2-7B-Instruct \
    --train_type full \
    --torch_dtype bfloat16 \
    --dataset lvjianjin/AdvertiseGen#1000 \
    --num_train_epochs 1 \
    --per_device_train_batch_size 1 \
    --learning_rate 1e-4 \
    --gradient_accumulation_steps 16 \
    --eval_steps 100 \
    --save_steps 100 \
    --save_total_limit 2 \
    --logging_steps 5 \
    --model_author swift \
    --model_name swift-robot \
    --use_galore true \
    --galore_quantization true