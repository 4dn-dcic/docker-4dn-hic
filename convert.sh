ls -1 cwl_sbg/ | xargs -I{} sh -c 'echo {}; python convert_sbgcwl_to_awsemcwl.py -i cwl_sbg/{} -o cwl_awsem/{}'

