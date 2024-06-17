#train
python3 main.py --config configs/Template_LBBDM_f4.yaml --train --sample_at_start --save_top --gpu_ids 0 \
--resume_model path/to/model_ckpt --resume_optim path/to/optim_ckpt

#test
python3 main.py --config configs/Template_LBBDM_f4.yaml --sample_to_eval --gpu_ids 0 \
--resume_model path/to/model_ckpt --resume_optim path/to/optim_ckpt

#preprocess and evaluation
## rename
#python3 preprocess_and_evaluation.py -f rename_samples -r root/dir -s source/dir -t target/dir

## copy
#python3 preprocess_and_evaluation.py -f copy_samples -r root/dir -s source/dir -t target/dir

## LPIPS
#python3 preprocess_and_evaluation.py -f LPIPS -s source/dir -t target/dir -n 1
#python preprocess_and_evaluation.py -f LPIPS -s "results\celeba_mask\LBBDM-f16\sample_to_eval\ground_truth" -t "results\celeba_mask\LBBDM-f16\sample_to_eval\200" -n 1
## max_min_LPIPS
#python3 preprocess_and_evaluation.py -f max_min_LPIPS -s source/dir -t target/dir -n 1
#python preprocess_and_evaluation.py -f max_min_LPIPS -s "results\celeba_mask\LBBDM-f16\sample_to_eval\ground_truth" -t "results\celeba_mask\LBBDM-f16\sample_to_eval\200" -n 1
## diversity
#python3 preprocess_and_evaluation.py -f diversity -s source/dir -n 1
#python preprocess_and_evaluation.py -f diversity -s "results\celeba_mask\LBBDM-f16\sample_to_eval\200" -n 1
## fidelity
#fidelity --gpu 0 --fid --input1 path1 --input2 path2
#python preprocess_and_evaluation.py -f fidelity -s "results\celeba_mask\LBBDM-f16\sample_to_eval\ground_truth" -t "results\celeba_mask\LBBDM-f16\sample_to_eval\200"


#python main.py --config configs/Template_LBBDM_f16.yaml --sample_to_eval --gpu_ids 0 --resume_model "D:\E-just\Grade 4\8th Semester\Graduation\pretrained-models\celeba.ckpt"