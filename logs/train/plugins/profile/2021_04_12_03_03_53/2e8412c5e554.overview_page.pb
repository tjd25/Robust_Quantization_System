�	��`�D@��`�D@!��`�D@	ae�����?ae�����?!ae�����?"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6��`�D@	Q����<@1[��Yen&@A����#F�?I���S��?Y �H� �?*	�&1��R@2g
0Iterator::Model::MaxIntraOpParallelism::Prefetch�;ۤ��?!{
��P@)�;ۤ��?1{
��P@:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelisma��pɱ?!K���JW@)-
�(z��?1U�'�:@:Preprocessing2F
Iterator::Model�#*T7�?!      Y@)�5�e�t?1N�2quQ@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 68.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"�3.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9ae�����?I���&+R@Q��-��;@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
		Q����<@	Q����<@!	Q����<@      ��!       "	[��Yen&@[��Yen&@![��Yen&@*      ��!       2	����#F�?����#F�?!����#F�?:	���S��?���S��?!���S��?B      ��!       J	 �H� �? �H� �?! �H� �?R      ��!       Z	 �H� �? �H� �?! �H� �?b      ��!       JGPUYae�����?b q���&+R@y��-��;@�"j
>gradient_tape/model_8/block1_conv2/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter�j�~�?!�j�~�?0"j
>gradient_tape/model_8/block1_conv1/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter��@3�?!��U�X�?0"j
>gradient_tape/model_8/block3_conv2/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter�
�'�?!EoR����?0"j
>gradient_tape/model_8/block3_conv3/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter�Zk�,�?!�E���h�?0";
model_8/block1_conv2/Relu_FusedConv2D��"˨Ʃ?!���yLm�?"h
=gradient_tape/model_8/block1_conv2/Conv2D/Conv2DBackpropInputConv2DBackpropInputG��f��?!�m�����?0"j
>gradient_tape/model_8/block2_conv2/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter�	Jsϥ?!'�!	�H�?0";
model_8/block3_conv3/Relu_FusedConv2D���;��?!GF3l��?";
model_8/block3_conv2/Relu_FusedConv2D�J���?!)�|I��?"h
=gradient_tape/model_8/block3_conv2/Conv2D/Conv2DBackpropInputConv2DBackpropInputݓ��ꃥ?!�����/�?0Q      Y@Y�Oq��#@a���}�V@q�ǵ���P@yfi�5kک?"�
both�Your program is POTENTIALLY input-bound because 68.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
moderate�3.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*�Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb�66.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 