% Initialise Caffe
function net = initCaffe(opt)

if (isfield(opt, 'useGPU') && opt.useGPU)
        caffe.set_mode_gpu();
        gpu_id = 3;  
        caffe.set_device(gpu_id);
else
        caffe.set_mode_cpu();
end

net = caffe.Net(opt.modelDefFile, opt.modelFile, 'test');
end
