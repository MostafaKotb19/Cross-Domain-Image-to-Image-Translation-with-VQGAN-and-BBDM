# Cross-Domain Image-to-Image Translation with VQGAN and BBDM

This project applies the architecture of the Brownian Bridge Diffusion Model (BBDM) in cross-domain image-to-image translation on the CelebAMask-HQ Dataset. The diffusion process is performed in the latent space of the VQGAN. This work extends the research presented in [this paper](https://arxiv.org/abs/2205.07680) by adding various commands, training on the CelebAMask-HQ Dataset, and incorporating a visualization demo.

## Usage

### Training
To train the model, use the following command:
```bash
python main.py --config configs/CelebAMaskHQ-f16.yaml --train --sample_at_start --save_top --gpu_ids 0 --resume_model CelebAMaskHQ-f16.pth
```

### Sampling on Test Dataset
To sample on the test dataset, use:
```bash
python main.py --config configs/CelebAMaskHQ-f16.yaml --sample_to_eval --gpu_ids 0 --resume_model CelebAMaskHQ-f16.pth
```

### Testing on a Single Image
To test the model on a single image, use:
```bash
python main.py --config configs/CelebAMaskHQ-f16.yaml --test --gpu_ids 0 --resume_model CelebAMaskHQ-f16.pth -i "path/to/input/image" -o "output/path"
```

### Loading the User Interface
To load the user interface, use:
```bash
python main.py --config configs/CelebAMaskHQ-f16.yaml --ui --gpu_ids 0 --resume_model CelebAMaskHQ-f16.pth
```

## References
- [Cross-Domain Image-to-Image Translation with VQGAN and BBDM](https://arxiv.org/abs/2205.07680)

## Acknowledgements
We extend our gratitude to the authors of the original paper for their foundational work.
