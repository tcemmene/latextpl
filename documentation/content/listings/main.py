import argparse
import yaml


def main():

    # parse arguments
    ap = argparse.ArgumentParser()
    ap.add_argument('--cfg_file', type=str)
    ap.add_argument('--do_train', type=int, default=1)
    ap.add_argument('--do_quant', type=int, default=0)
    ap.add_argument('--folds', nargs='+', default='all')
    args = ap.parse_args()
    if args.cfg_file is None:
        raise ValueError('Please specify a config file over run argument --cfg_file=..')

    # load optimization parameters
    config_file = open(args.cfg_file, 'r')
    config = yaml.load(config_file, Loader=yaml.FullLoader)
    config_file.close()

if __name__ == "__main__":
    main()