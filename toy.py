import torch
from torch.utils.tensorboard import SummaryWriter
import argparse

# some import
import kornia

if __name__ == '__main__':
    # passing some args
    parser = argparse.ArgumentParser()
    parser.add_argument('-e', '--epochs', type=int, required=True)
    parser.add_argument('-lr', '--learning_rate', type=float, required=True)
    args = parser.parse_args()

    # recording some output
    writer = SummaryWriter()

    # running some optimization
    s = [1]
    inp = torch.ones(s, requires_grad=True)
    tar = torch.zeros(s)

    opt = torch.optim.Adam([inp], lr=args.learning_rate)
    crt = torch.nn.MSELoss()

    for e in range(200):
        opt.zero_grad()
        loss = crt(inp, tar)
        loss.backward()
        opt.step()

        writer.add_scalar('mse_loss', loss, e)
