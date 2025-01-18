"""Example."""
import numpy as np

from loss_landscape_anim import LeNet, MNISTDataModule, loss_landscape_anim

if __name__ == "__main__":
    loss_landscape_anim(n_epochs=300, output_filename="output/sample.gif")

    """
    u_gen = np.random.normal(size=61706)
    u = u_gen / np.linalg.norm(u_gen)
    v_gen = np.random.normal(size=61706)
    v = v_gen / np.linalg.norm(v_gen)

    bs = 16
    lr = 1e-3
    datamodule = MNISTDataModule(batch_size=bs, n_examples=3000)
    model = LeNet(learning_rate=lr, num_classes=10) # num_classes = 10 for MNIST, required for Accuracy metric

    loss_landscape_anim(
        n_epochs=10,
        model=model,
        datamodule=datamodule,
        optimizer="adam",
        reduction_method="custom",
        custom_directions=(u, v),
        giffps=15,
        seed=180224,
        load_model=False,
        output_to_file=True,
        gpus=0,  # Set to # gpus if available
    )
    """
