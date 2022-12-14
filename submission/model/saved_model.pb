??"
?!?!
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
n
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??!
?
batch_normalization_36/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_36/gamma
?
0batch_normalization_36/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_36/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_36/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_36/beta
?
/batch_normalization_36/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_36/beta*
_output_shapes
: *
dtype0
?
"batch_normalization_36/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_36/moving_mean
?
6batch_normalization_36/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_36/moving_mean*
_output_shapes
: *
dtype0
?
&batch_normalization_36/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_36/moving_variance
?
:batch_normalization_36/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_36/moving_variance*
_output_shapes
: *
dtype0
?
conv3d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_5/kernel

#conv3d_5/kernel/Read/ReadVariableOpReadVariableOpconv3d_5/kernel**
_output_shapes
: *
dtype0
r
conv3d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_5/bias
k
!conv3d_5/bias/Read/ReadVariableOpReadVariableOpconv3d_5/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
conv_lstm2d_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameconv_lstm2d_36/kernel
?
)conv_lstm2d_36/kernel/Read/ReadVariableOpReadVariableOpconv_lstm2d_36/kernel*'
_output_shapes
:?*
dtype0
?
conv_lstm2d_36/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: ?*0
shared_name!conv_lstm2d_36/recurrent_kernel
?
3conv_lstm2d_36/recurrent_kernel/Read/ReadVariableOpReadVariableOpconv_lstm2d_36/recurrent_kernel*'
_output_shapes
: ?*
dtype0

conv_lstm2d_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameconv_lstm2d_36/bias
x
'conv_lstm2d_36/bias/Read/ReadVariableOpReadVariableOpconv_lstm2d_36/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_36/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_36/gamma/m
?
7Adam/batch_normalization_36/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_36/gamma/m*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_36/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_36/beta/m
?
6Adam/batch_normalization_36/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_36/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv3d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_5/kernel/m
?
*Adam/conv3d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_5/kernel/m**
_output_shapes
: *
dtype0
?
Adam/conv3d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_5/bias/m
y
(Adam/conv3d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_5/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv_lstm2d_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_nameAdam/conv_lstm2d_36/kernel/m
?
0Adam/conv_lstm2d_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_lstm2d_36/kernel/m*'
_output_shapes
:?*
dtype0
?
&Adam/conv_lstm2d_36/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: ?*7
shared_name(&Adam/conv_lstm2d_36/recurrent_kernel/m
?
:Adam/conv_lstm2d_36/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/conv_lstm2d_36/recurrent_kernel/m*'
_output_shapes
: ?*
dtype0
?
Adam/conv_lstm2d_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/conv_lstm2d_36/bias/m
?
.Adam/conv_lstm2d_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_lstm2d_36/bias/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_36/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_36/gamma/v
?
7Adam/batch_normalization_36/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_36/gamma/v*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_36/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_36/beta/v
?
6Adam/batch_normalization_36/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_36/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv3d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv3d_5/kernel/v
?
*Adam/conv3d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_5/kernel/v**
_output_shapes
: *
dtype0
?
Adam/conv3d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_5/bias/v
y
(Adam/conv3d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_5/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv_lstm2d_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_nameAdam/conv_lstm2d_36/kernel/v
?
0Adam/conv_lstm2d_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_lstm2d_36/kernel/v*'
_output_shapes
:?*
dtype0
?
&Adam/conv_lstm2d_36/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: ?*7
shared_name(&Adam/conv_lstm2d_36/recurrent_kernel/v
?
:Adam/conv_lstm2d_36/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/conv_lstm2d_36/recurrent_kernel/v*'
_output_shapes
: ?*
dtype0
?
Adam/conv_lstm2d_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/conv_lstm2d_36/bias/v
?
.Adam/conv_lstm2d_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_lstm2d_36/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?,
value?,B?+ B?+
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
 
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api

!	keras_api
?
"iter

#beta_1

$beta_2
	%decay
&learning_ratemMmNmOmP'mQ(mR)mSvTvUvVvW'vX(vY)vZ
?
'0
(1
)2
3
4
5
6
7
8
1
'0
(1
)2
3
4
5
6
 
?
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
	regularization_losses
 
~

'kernel
(recurrent_kernel
)bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
 

'0
(1
)2

'0
(1
)2
 
?

3states
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_36/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_36/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_36/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_36/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3

0
1
 
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEconv3d_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
 
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEconv_lstm2d_36/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEconv_lstm2d_36/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEconv_lstm2d_36/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE

0
1
#
0
1
2
3
4

C0
 
 

'0
(1
)2

'0
(1
)2
 
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
/	variables
0trainable_variables
1regularization_losses
 
 

0
 
 
 

0
1
 
 
 
 
 
 
 
 
 
4
	Itotal
	Jcount
K	variables
L	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

I0
J1

K	variables
??
VARIABLE_VALUE#Adam/batch_normalization_36/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_36/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv3d_5/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv3d_5/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/conv_lstm2d_36/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/conv_lstm2d_36/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/conv_lstm2d_36/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_36/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_36/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv3d_5/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv3d_5/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/conv_lstm2d_36/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/conv_lstm2d_36/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/conv_lstm2d_36/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_6Placeholder*<
_output_shapes*
(:&??????????????????@@*
dtype0*1
shape(:&??????????????????@@
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_6conv_lstm2d_36/kernelconv_lstm2d_36/recurrent_kernelconv_lstm2d_36/biasbatch_normalization_36/gammabatch_normalization_36/beta"batch_normalization_36/moving_mean&batch_normalization_36/moving_varianceconv3d_5/kernelconv3d_5/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_102133
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename0batch_normalization_36/gamma/Read/ReadVariableOp/batch_normalization_36/beta/Read/ReadVariableOp6batch_normalization_36/moving_mean/Read/ReadVariableOp:batch_normalization_36/moving_variance/Read/ReadVariableOp#conv3d_5/kernel/Read/ReadVariableOp!conv3d_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)conv_lstm2d_36/kernel/Read/ReadVariableOp3conv_lstm2d_36/recurrent_kernel/Read/ReadVariableOp'conv_lstm2d_36/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp7Adam/batch_normalization_36/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_36/beta/m/Read/ReadVariableOp*Adam/conv3d_5/kernel/m/Read/ReadVariableOp(Adam/conv3d_5/bias/m/Read/ReadVariableOp0Adam/conv_lstm2d_36/kernel/m/Read/ReadVariableOp:Adam/conv_lstm2d_36/recurrent_kernel/m/Read/ReadVariableOp.Adam/conv_lstm2d_36/bias/m/Read/ReadVariableOp7Adam/batch_normalization_36/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_36/beta/v/Read/ReadVariableOp*Adam/conv3d_5/kernel/v/Read/ReadVariableOp(Adam/conv3d_5/bias/v/Read/ReadVariableOp0Adam/conv_lstm2d_36/kernel/v/Read/ReadVariableOp:Adam/conv_lstm2d_36/recurrent_kernel/v/Read/ReadVariableOp.Adam/conv_lstm2d_36/bias/v/Read/ReadVariableOpConst*+
Tin$
"2 	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_104686
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_36/gammabatch_normalization_36/beta"batch_normalization_36/moving_mean&batch_normalization_36/moving_varianceconv3d_5/kernelconv3d_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv_lstm2d_36/kernelconv_lstm2d_36/recurrent_kernelconv_lstm2d_36/biastotalcount#Adam/batch_normalization_36/gamma/m"Adam/batch_normalization_36/beta/mAdam/conv3d_5/kernel/mAdam/conv3d_5/bias/mAdam/conv_lstm2d_36/kernel/m&Adam/conv_lstm2d_36/recurrent_kernel/mAdam/conv_lstm2d_36/bias/m#Adam/batch_normalization_36/gamma/v"Adam/batch_normalization_36/beta/vAdam/conv3d_5/kernel/vAdam/conv3d_5/bias/vAdam/conv_lstm2d_36/kernel/v&Adam/conv_lstm2d_36/recurrent_kernel/vAdam/conv_lstm2d_36/bias/v**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_104786?? 
??
?
 conv_lstm2d_36_while_body_102289:
6conv_lstm2d_36_while_conv_lstm2d_36_while_loop_counter@
<conv_lstm2d_36_while_conv_lstm2d_36_while_maximum_iterations$
 conv_lstm2d_36_while_placeholder&
"conv_lstm2d_36_while_placeholder_1&
"conv_lstm2d_36_while_placeholder_2&
"conv_lstm2d_36_while_placeholder_37
3conv_lstm2d_36_while_conv_lstm2d_36_strided_slice_0u
qconv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensor_0O
4conv_lstm2d_36_while_split_readvariableop_resource_0:?Q
6conv_lstm2d_36_while_split_1_readvariableop_resource_0: ?E
6conv_lstm2d_36_while_split_2_readvariableop_resource_0:	?!
conv_lstm2d_36_while_identity#
conv_lstm2d_36_while_identity_1#
conv_lstm2d_36_while_identity_2#
conv_lstm2d_36_while_identity_3#
conv_lstm2d_36_while_identity_4#
conv_lstm2d_36_while_identity_55
1conv_lstm2d_36_while_conv_lstm2d_36_strided_slices
oconv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensorM
2conv_lstm2d_36_while_split_readvariableop_resource:?O
4conv_lstm2d_36_while_split_1_readvariableop_resource: ?C
4conv_lstm2d_36_while_split_2_readvariableop_resource:	???)conv_lstm2d_36/while/split/ReadVariableOp?+conv_lstm2d_36/while/split_1/ReadVariableOp?+conv_lstm2d_36/while/split_2/ReadVariableOp?
Fconv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
8conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqconv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensor_0 conv_lstm2d_36_while_placeholderOconv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????@@*
element_dtype0?
$conv_lstm2d_36/while/ones_like/ShapeShape?conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:i
$conv_lstm2d_36/while/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
conv_lstm2d_36/while/ones_likeFill-conv_lstm2d_36/while/ones_like/Shape:output:0-conv_lstm2d_36/while/ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@x
&conv_lstm2d_36/while/ones_like_1/ShapeShape"conv_lstm2d_36_while_placeholder_2*
T0*
_output_shapes
:k
&conv_lstm2d_36/while/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
 conv_lstm2d_36/while/ones_like_1Fill/conv_lstm2d_36/while/ones_like_1/Shape:output:0/conv_lstm2d_36/while/ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mulMul?conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0'conv_lstm2d_36/while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/while/mul_1Mul?conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0'conv_lstm2d_36/while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/while/mul_2Mul?conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0'conv_lstm2d_36/while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/while/mul_3Mul?conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0'conv_lstm2d_36/while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/while/mul_4Mul"conv_lstm2d_36_while_placeholder_2)conv_lstm2d_36/while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mul_5Mul"conv_lstm2d_36_while_placeholder_2)conv_lstm2d_36/while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mul_6Mul"conv_lstm2d_36_while_placeholder_2)conv_lstm2d_36/while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mul_7Mul"conv_lstm2d_36_while_placeholder_2)conv_lstm2d_36/while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ f
$conv_lstm2d_36/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
)conv_lstm2d_36/while/split/ReadVariableOpReadVariableOp4conv_lstm2d_36_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype0?
conv_lstm2d_36/while/splitSplit-conv_lstm2d_36/while/split/split_dim:output:01conv_lstm2d_36/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splith
&conv_lstm2d_36/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+conv_lstm2d_36/while/split_1/ReadVariableOpReadVariableOp6conv_lstm2d_36_while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype0?
conv_lstm2d_36/while/split_1Split/conv_lstm2d_36/while/split_1/split_dim:output:03conv_lstm2d_36/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splith
&conv_lstm2d_36/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
+conv_lstm2d_36/while/split_2/ReadVariableOpReadVariableOp6conv_lstm2d_36_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
conv_lstm2d_36/while/split_2Split/conv_lstm2d_36/while/split_2/split_dim:output:03conv_lstm2d_36/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
 conv_lstm2d_36/while/convolutionConv2Dconv_lstm2d_36/while/mul:z:0#conv_lstm2d_36/while/split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/while/BiasAddBiasAdd)conv_lstm2d_36/while/convolution:output:0%conv_lstm2d_36/while/split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
"conv_lstm2d_36/while/convolution_1Conv2Dconv_lstm2d_36/while/mul_1:z:0#conv_lstm2d_36/while/split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/while/BiasAdd_1BiasAdd+conv_lstm2d_36/while/convolution_1:output:0%conv_lstm2d_36/while/split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
"conv_lstm2d_36/while/convolution_2Conv2Dconv_lstm2d_36/while/mul_2:z:0#conv_lstm2d_36/while/split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/while/BiasAdd_2BiasAdd+conv_lstm2d_36/while/convolution_2:output:0%conv_lstm2d_36/while/split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
"conv_lstm2d_36/while/convolution_3Conv2Dconv_lstm2d_36/while/mul_3:z:0#conv_lstm2d_36/while/split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/while/BiasAdd_3BiasAdd+conv_lstm2d_36/while/convolution_3:output:0%conv_lstm2d_36/while/split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
"conv_lstm2d_36/while/convolution_4Conv2Dconv_lstm2d_36/while/mul_4:z:0%conv_lstm2d_36/while/split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
"conv_lstm2d_36/while/convolution_5Conv2Dconv_lstm2d_36/while/mul_5:z:0%conv_lstm2d_36/while/split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
"conv_lstm2d_36/while/convolution_6Conv2Dconv_lstm2d_36/while/mul_6:z:0%conv_lstm2d_36/while/split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
"conv_lstm2d_36/while/convolution_7Conv2Dconv_lstm2d_36/while/mul_7:z:0%conv_lstm2d_36/while/split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/while/addAddV2%conv_lstm2d_36/while/BiasAdd:output:0+conv_lstm2d_36/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ _
conv_lstm2d_36/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>a
conv_lstm2d_36/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
conv_lstm2d_36/while/Mul_8Mulconv_lstm2d_36/while/add:z:0#conv_lstm2d_36/while/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/Add_1AddV2conv_lstm2d_36/while/Mul_8:z:0%conv_lstm2d_36/while/Const_1:output:0*
T0*/
_output_shapes
:?????????@@ q
,conv_lstm2d_36/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
*conv_lstm2d_36/while/clip_by_value/MinimumMinimumconv_lstm2d_36/while/Add_1:z:05conv_lstm2d_36/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ i
$conv_lstm2d_36/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
"conv_lstm2d_36/while/clip_by_valueMaximum.conv_lstm2d_36/while/clip_by_value/Minimum:z:0-conv_lstm2d_36/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/add_2AddV2'conv_lstm2d_36/while/BiasAdd_1:output:0+conv_lstm2d_36/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ a
conv_lstm2d_36/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>a
conv_lstm2d_36/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
conv_lstm2d_36/while/Mul_9Mulconv_lstm2d_36/while/add_2:z:0%conv_lstm2d_36/while/Const_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/Add_3AddV2conv_lstm2d_36/while/Mul_9:z:0%conv_lstm2d_36/while/Const_3:output:0*
T0*/
_output_shapes
:?????????@@ s
.conv_lstm2d_36/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
,conv_lstm2d_36/while/clip_by_value_1/MinimumMinimumconv_lstm2d_36/while/Add_3:z:07conv_lstm2d_36/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ k
&conv_lstm2d_36/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
$conv_lstm2d_36/while/clip_by_value_1Maximum0conv_lstm2d_36/while/clip_by_value_1/Minimum:z:0/conv_lstm2d_36/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mul_10Mul(conv_lstm2d_36/while/clip_by_value_1:z:0"conv_lstm2d_36_while_placeholder_3*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/add_4AddV2'conv_lstm2d_36/while/BiasAdd_2:output:0+conv_lstm2d_36/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ {
conv_lstm2d_36/while/TanhTanhconv_lstm2d_36/while/add_4:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mul_11Mul&conv_lstm2d_36/while/clip_by_value:z:0conv_lstm2d_36/while/Tanh:y:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/add_5AddV2conv_lstm2d_36/while/mul_10:z:0conv_lstm2d_36/while/mul_11:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/add_6AddV2'conv_lstm2d_36/while/BiasAdd_3:output:0+conv_lstm2d_36/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ a
conv_lstm2d_36/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>a
conv_lstm2d_36/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
conv_lstm2d_36/while/Mul_12Mulconv_lstm2d_36/while/add_6:z:0%conv_lstm2d_36/while/Const_4:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/Add_7AddV2conv_lstm2d_36/while/Mul_12:z:0%conv_lstm2d_36/while/Const_5:output:0*
T0*/
_output_shapes
:?????????@@ s
.conv_lstm2d_36/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
,conv_lstm2d_36/while/clip_by_value_2/MinimumMinimumconv_lstm2d_36/while/Add_7:z:07conv_lstm2d_36/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ k
&conv_lstm2d_36/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
$conv_lstm2d_36/while/clip_by_value_2Maximum0conv_lstm2d_36/while/clip_by_value_2/Minimum:z:0/conv_lstm2d_36/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ }
conv_lstm2d_36/while/Tanh_1Tanhconv_lstm2d_36/while/add_5:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mul_13Mul(conv_lstm2d_36/while/clip_by_value_2:z:0conv_lstm2d_36/while/Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ ?
9conv_lstm2d_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"conv_lstm2d_36_while_placeholder_1 conv_lstm2d_36_while_placeholderconv_lstm2d_36/while/mul_13:z:0*
_output_shapes
: *
element_dtype0:???^
conv_lstm2d_36/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv_lstm2d_36/while/add_8AddV2 conv_lstm2d_36_while_placeholder%conv_lstm2d_36/while/add_8/y:output:0*
T0*
_output_shapes
: ^
conv_lstm2d_36/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv_lstm2d_36/while/add_9AddV26conv_lstm2d_36_while_conv_lstm2d_36_while_loop_counter%conv_lstm2d_36/while/add_9/y:output:0*
T0*
_output_shapes
: ?
conv_lstm2d_36/while/IdentityIdentityconv_lstm2d_36/while/add_9:z:0^conv_lstm2d_36/while/NoOp*
T0*
_output_shapes
: ?
conv_lstm2d_36/while/Identity_1Identity<conv_lstm2d_36_while_conv_lstm2d_36_while_maximum_iterations^conv_lstm2d_36/while/NoOp*
T0*
_output_shapes
: ?
conv_lstm2d_36/while/Identity_2Identityconv_lstm2d_36/while/add_8:z:0^conv_lstm2d_36/while/NoOp*
T0*
_output_shapes
: ?
conv_lstm2d_36/while/Identity_3IdentityIconv_lstm2d_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lstm2d_36/while/NoOp*
T0*
_output_shapes
: ?
conv_lstm2d_36/while/Identity_4Identityconv_lstm2d_36/while/mul_13:z:0^conv_lstm2d_36/while/NoOp*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/Identity_5Identityconv_lstm2d_36/while/add_5:z:0^conv_lstm2d_36/while/NoOp*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/NoOpNoOp*^conv_lstm2d_36/while/split/ReadVariableOp,^conv_lstm2d_36/while/split_1/ReadVariableOp,^conv_lstm2d_36/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1conv_lstm2d_36_while_conv_lstm2d_36_strided_slice3conv_lstm2d_36_while_conv_lstm2d_36_strided_slice_0"G
conv_lstm2d_36_while_identity&conv_lstm2d_36/while/Identity:output:0"K
conv_lstm2d_36_while_identity_1(conv_lstm2d_36/while/Identity_1:output:0"K
conv_lstm2d_36_while_identity_2(conv_lstm2d_36/while/Identity_2:output:0"K
conv_lstm2d_36_while_identity_3(conv_lstm2d_36/while/Identity_3:output:0"K
conv_lstm2d_36_while_identity_4(conv_lstm2d_36/while/Identity_4:output:0"K
conv_lstm2d_36_while_identity_5(conv_lstm2d_36/while/Identity_5:output:0"n
4conv_lstm2d_36_while_split_1_readvariableop_resource6conv_lstm2d_36_while_split_1_readvariableop_resource_0"n
4conv_lstm2d_36_while_split_2_readvariableop_resource6conv_lstm2d_36_while_split_2_readvariableop_resource_0"j
2conv_lstm2d_36_while_split_readvariableop_resource4conv_lstm2d_36_while_split_readvariableop_resource_0"?
oconv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensorqconv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : 2V
)conv_lstm2d_36/while/split/ReadVariableOp)conv_lstm2d_36/while/split/ReadVariableOp2Z
+conv_lstm2d_36/while/split_1/ReadVariableOp+conv_lstm2d_36/while/split_1/ReadVariableOp2Z
+conv_lstm2d_36/while/split_2/ReadVariableOp+conv_lstm2d_36/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
: 
?
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_104241

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*j
_output_shapesX
V:8???????????????????????????????????? : : : : :*
data_formatNDHWC*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*N
_output_shapes<
::8???????????????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?
?
2__inference_conv_lstm_cell_39_layer_call_fn_104331

inputs
states_0
states_1"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????@@ :?????????@@ :?????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_100972w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@ y

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:?????????@@ y

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:?????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????@@:?????????@@ :?????????@@ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????@@ 
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????@@ 
"
_user_specified_name
states/1
?
?
while_cond_103948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_103948___redundant_placeholder04
0while_while_cond_103948___redundant_placeholder14
0while_while_cond_103948___redundant_placeholder24
0while_while_cond_103948___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????@@ :?????????@@ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
:
?
?
/__inference_conv_lstm2d_36_layer_call_fn_102875
inputs_0"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_101093?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????@@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
<
_output_shapes*
(:&??????????????????@@
"
_user_specified_name
inputs/0
?

?
(__inference_model_5_layer_call_fn_102048
input_6"
unknown:?$
	unknown_0: ?
	unknown_1:	?
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: '
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@*)
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_5_layer_call_and_return_conditional_losses_102004?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::&??????????????????@@: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
<
_output_shapes*
(:&??????????????????@@
!
_user_specified_name	input_6
?	
?
7__inference_batch_normalization_36_layer_call_fn_104179

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8???????????????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_101155?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8???????????????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?o
?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_101422

inputs8
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilef

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????@@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@@j
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    ?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ~
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ?
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*<
_output_shapes*
(:&??????????????????@@?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@*
shrink_axis_maskW
ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@U
ones_like_1/ShapeShapeconvolution:output:0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ r
mulMulstrided_slice_1:output:0ones_like:output:0*
T0*/
_output_shapes
:?????????@@t
mul_1Mulstrided_slice_1:output:0ones_like:output:0*
T0*/
_output_shapes
:?????????@@t
mul_2Mulstrided_slice_1:output:0ones_like:output:0*
T0*/
_output_shapes
:?????????@@t
mul_3Mulstrided_slice_1:output:0ones_like:output:0*
T0*/
_output_shapes
:?????????@@r
mul_4Mulconvolution:output:0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_5Mulconvolution:output:0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_6Mulconvolution:output:0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_7Mulconvolution:output:0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype0?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
convolution_1Conv2Dmul:z:0split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
v
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
convolution_2Conv2D	mul_1:z:0split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
convolution_3Conv2D	mul_2:z:0split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
convolution_4Conv2D	mul_3:z:0split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
convolution_5Conv2D	mul_4:z:0split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_6Conv2D	mul_5:z:0split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_7Conv2D	mul_6:z:0split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_8Conv2D	mul_7:z:0split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?_
Mul_8Muladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????@@ \
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ t
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_10Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????@@ t
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ Q
TanhTanh	add_4:z:0*
T0*/
_output_shapes
:?????????@@ d
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*/
_output_shapes
:?????????@@ `
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*/
_output_shapes
:?????????@@ t
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????@@ f
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ S
Tanh_1Tanh	add_5:z:0*
T0*/
_output_shapes
:?????????@@ h
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_101282*
condR
while_cond_101281*[
output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????@@ *
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@ *
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@ s
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ ?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????@@: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_101124

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*j
_output_shapesX
V:8???????????????????????????????????? : : : : :*
data_formatNDHWC*
epsilon%o?:*
is_training( ?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*N
_output_shapes<
::8???????????????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?

?
(__inference_model_5_layer_call_fn_102156

inputs"
unknown:?$
	unknown_0: ?
	unknown_1:	?
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: '
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_5_layer_call_and_return_conditional_losses_101477?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::&??????????????????@@: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
?
?
while_cond_101024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_101024___redundant_placeholder04
0while_while_cond_101024___redundant_placeholder14
0while_while_cond_101024___redundant_placeholder24
0while_while_cond_101024___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????@@ :?????????@@ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
:
?

?
$__inference_signature_wrapper_102133
input_6"
unknown:?$
	unknown_0: ?
	unknown_1:	?
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: '
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_100588?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::&??????????????????@@: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
<
_output_shapes*
(:&??????????????????@@
!
_user_specified_name	input_6
?
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_101541

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*X
_output_shapesF
D:&??????????????????@@ : : : : :*
data_formatNDHWC*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????@@ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:d `
<
_output_shapes*
(:&??????????????????@@ 
 
_user_specified_nameinputs
?
?
while_cond_103320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_103320___redundant_placeholder04
0while_while_cond_103320___redundant_placeholder14
0while_while_cond_103320___redundant_placeholder24
0while_while_cond_103320___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????@@ :?????????@@ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
:
?{
?
"__inference__traced_restore_104786
file_prefix;
-assignvariableop_batch_normalization_36_gamma: <
.assignvariableop_1_batch_normalization_36_beta: C
5assignvariableop_2_batch_normalization_36_moving_mean: G
9assignvariableop_3_batch_normalization_36_moving_variance: @
"assignvariableop_4_conv3d_5_kernel: .
 assignvariableop_5_conv3d_5_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: D
)assignvariableop_11_conv_lstm2d_36_kernel:?N
3assignvariableop_12_conv_lstm2d_36_recurrent_kernel: ?6
'assignvariableop_13_conv_lstm2d_36_bias:	?#
assignvariableop_14_total: #
assignvariableop_15_count: E
7assignvariableop_16_adam_batch_normalization_36_gamma_m: D
6assignvariableop_17_adam_batch_normalization_36_beta_m: H
*assignvariableop_18_adam_conv3d_5_kernel_m: 6
(assignvariableop_19_adam_conv3d_5_bias_m:K
0assignvariableop_20_adam_conv_lstm2d_36_kernel_m:?U
:assignvariableop_21_adam_conv_lstm2d_36_recurrent_kernel_m: ?=
.assignvariableop_22_adam_conv_lstm2d_36_bias_m:	?E
7assignvariableop_23_adam_batch_normalization_36_gamma_v: D
6assignvariableop_24_adam_batch_normalization_36_beta_v: H
*assignvariableop_25_adam_conv3d_5_kernel_v: 6
(assignvariableop_26_adam_conv3d_5_bias_v:K
0assignvariableop_27_adam_conv_lstm2d_36_kernel_v:?U
:assignvariableop_28_adam_conv_lstm2d_36_recurrent_kernel_v: ?=
.assignvariableop_29_adam_conv_lstm2d_36_bias_v:	?
identity_31??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp-assignvariableop_batch_normalization_36_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp.assignvariableop_1_batch_normalization_36_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp5assignvariableop_2_batch_normalization_36_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp9assignvariableop_3_batch_normalization_36_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv3d_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv3d_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp)assignvariableop_11_conv_lstm2d_36_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp3assignvariableop_12_conv_lstm2d_36_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp'assignvariableop_13_conv_lstm2d_36_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_adam_batch_normalization_36_gamma_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp6assignvariableop_17_adam_batch_normalization_36_beta_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_conv3d_5_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_conv3d_5_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp0assignvariableop_20_adam_conv_lstm2d_36_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp:assignvariableop_21_adam_conv_lstm2d_36_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp.assignvariableop_22_adam_conv_lstm2d_36_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp7assignvariableop_23_adam_batch_normalization_36_gamma_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_batch_normalization_36_beta_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv3d_5_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv3d_5_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_adam_conv_lstm2d_36_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp:assignvariableop_28_adam_conv_lstm2d_36_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp.assignvariableop_29_adam_conv_lstm2d_36_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
/__inference_conv_lstm2d_36_layer_call_fn_102886

inputs"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_101422?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????@@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
?g
?
while_body_101282
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????@@*
element_dtype0u
while/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:Z
while/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/ones_likeFillwhile/ones_like/Shape:output:0while/ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@Z
while/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:\
while/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/ones_like_1Fill while/ones_like_1/Shape:output:0 while/ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
	while/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
while/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
while/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
while/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@}
while/mul_4Mulwhile_placeholder_2while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_5Mulwhile_placeholder_2while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_6Mulwhile_placeholder_2while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_7Mulwhile_placeholder_2while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype0?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype0?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
while/convolutionConv2Dwhile/mul:z:0while/split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_1Conv2Dwhile/mul_1:z:0while/split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_2Conv2Dwhile/mul_2:z:0while/split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_3Conv2Dwhile/mul_3:z:0while/split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_4Conv2Dwhile/mul_4:z:0while/split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_5Conv2Dwhile/mul_5:z:0while/split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_6Conv2Dwhile/mul_6:z:0while/split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_7Conv2Dwhile/mul_7:z:0while/split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?q
while/Mul_8Mulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????@@ w
while/Add_1AddV2while/Mul_8:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????@@ b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_9Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????@@ w
while/Add_3AddV2while/Mul_9:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????@@ d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ \
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_10Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????@@ ?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ ]

while/TanhTanhwhile/add_4:z:0*
T0*/
_output_shapes
:?????????@@ v
while/mul_11Mulwhile/clip_by_value:z:0while/Tanh:y:0*
T0*/
_output_shapes
:?????????@@ r
while/add_5AddV2while/mul_10:z:0while/mul_11:z:0*
T0*/
_output_shapes
:?????????@@ ?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_12Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????@@ x
while/Add_7AddV2while/Mul_12:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????@@ d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ \
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ _
while/Tanh_1Tanhwhile/add_5:z:0*
T0*/
_output_shapes
:?????????@@ z
while/mul_13Mulwhile/clip_by_value_2:z:0while/Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ ?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_13:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: u
while/Identity_4Identitywhile/mul_13:z:0^while/NoOp*
T0*/
_output_shapes
:?????????@@ t
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????@@ ?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
: 
?
?
C__inference_model_5_layer_call_and_return_conditional_losses_102075
input_60
conv_lstm2d_36_102051:?0
conv_lstm2d_36_102053: ?$
conv_lstm2d_36_102055:	?+
batch_normalization_36_102058: +
batch_normalization_36_102060: +
batch_normalization_36_102062: +
batch_normalization_36_102064: -
conv3d_5_102067: 
conv3d_5_102069:
identity??.batch_normalization_36/StatefulPartitionedCall? conv3d_5/StatefulPartitionedCall?&conv_lstm2d_36/StatefulPartitionedCall?
&conv_lstm2d_36/StatefulPartitionedCallStatefulPartitionedCallinput_6conv_lstm2d_36_102051conv_lstm2d_36_102053conv_lstm2d_36_102055*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_101422?
.batch_normalization_36/StatefulPartitionedCallStatefulPartitionedCall/conv_lstm2d_36/StatefulPartitionedCall:output:0batch_normalization_36_102058batch_normalization_36_102060batch_normalization_36_102062batch_normalization_36_102064*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_101447?
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_36/StatefulPartitionedCall:output:0conv3d_5_102067conv3d_5_102069*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_101468]
tf.math.multiply_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?D?
tf.math.multiply_5/MulMul)conv3d_5/StatefulPartitionedCall:output:0!tf.math.multiply_5/Mul/y:output:0*
T0*<
_output_shapes*
(:&??????????????????@@~
IdentityIdentitytf.math.multiply_5/Mul:z:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@?
NoOpNoOp/^batch_normalization_36/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall'^conv_lstm2d_36/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::&??????????????????@@: : : : : : : : : 2`
.batch_normalization_36/StatefulPartitionedCall.batch_normalization_36/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2P
&conv_lstm2d_36/StatefulPartitionedCall&conv_lstm2d_36/StatefulPartitionedCall:e a
<
_output_shapes*
(:&??????????????????@@
!
_user_specified_name	input_6
?
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_104259

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*X
_output_shapesF
D:&??????????????????@@ : : : : :*
data_formatNDHWC*
epsilon%o?:*
is_training( x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????@@ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:d `
<
_output_shapes*
(:&??????????????????@@ 
 
_user_specified_nameinputs
?
?
 conv_lstm2d_36_while_cond_102625:
6conv_lstm2d_36_while_conv_lstm2d_36_while_loop_counter@
<conv_lstm2d_36_while_conv_lstm2d_36_while_maximum_iterations$
 conv_lstm2d_36_while_placeholder&
"conv_lstm2d_36_while_placeholder_1&
"conv_lstm2d_36_while_placeholder_2&
"conv_lstm2d_36_while_placeholder_3:
6conv_lstm2d_36_while_less_conv_lstm2d_36_strided_sliceR
Nconv_lstm2d_36_while_conv_lstm2d_36_while_cond_102625___redundant_placeholder0R
Nconv_lstm2d_36_while_conv_lstm2d_36_while_cond_102625___redundant_placeholder1R
Nconv_lstm2d_36_while_conv_lstm2d_36_while_cond_102625___redundant_placeholder2R
Nconv_lstm2d_36_while_conv_lstm2d_36_while_cond_102625___redundant_placeholder3!
conv_lstm2d_36_while_identity
?
conv_lstm2d_36/while/LessLess conv_lstm2d_36_while_placeholder6conv_lstm2d_36_while_less_conv_lstm2d_36_strided_slice*
T0*
_output_shapes
: i
conv_lstm2d_36/while/IdentityIdentityconv_lstm2d_36/while/Less:z:0*
T0
*
_output_shapes
: "G
conv_lstm2d_36_while_identity&conv_lstm2d_36/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????@@ :?????????@@ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
:
?
?
D__inference_conv3d_5_layer_call_and_return_conditional_losses_101468

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????@@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????@@k
SigmoidSigmoidBiasAdd:output:0*
T0*<
_output_shapes*
(:&??????????????????@@o
IdentityIdentitySigmoid:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:&??????????????????@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????@@ 
 
_user_specified_nameinputs
??
?
C__inference_model_5_layer_call_and_return_conditional_losses_102452

inputsG
,conv_lstm2d_36_split_readvariableop_resource:?I
.conv_lstm2d_36_split_1_readvariableop_resource: ?=
.conv_lstm2d_36_split_2_readvariableop_resource:	?<
.batch_normalization_36_readvariableop_resource: >
0batch_normalization_36_readvariableop_1_resource: M
?batch_normalization_36_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_36_fusedbatchnormv3_readvariableop_1_resource: E
'conv3d_5_conv3d_readvariableop_resource: 6
(conv3d_5_biasadd_readvariableop_resource:
identity??6batch_normalization_36/FusedBatchNormV3/ReadVariableOp?8batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_36/ReadVariableOp?'batch_normalization_36/ReadVariableOp_1?conv3d_5/BiasAdd/ReadVariableOp?conv3d_5/Conv3D/ReadVariableOp?#conv_lstm2d_36/split/ReadVariableOp?%conv_lstm2d_36/split_1/ReadVariableOp?%conv_lstm2d_36/split_2/ReadVariableOp?conv_lstm2d_36/whileu
conv_lstm2d_36/zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????@@f
$conv_lstm2d_36/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
conv_lstm2d_36/SumSumconv_lstm2d_36/zeros_like:y:0-conv_lstm2d_36/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@@y
conv_lstm2d_36/zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    ?
conv_lstm2d_36/convolutionConv2Dconv_lstm2d_36/Sum:output:0conv_lstm2d_36/zeros:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
z
conv_lstm2d_36/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
conv_lstm2d_36/transpose	Transposeinputs&conv_lstm2d_36/transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@`
conv_lstm2d_36/ShapeShapeconv_lstm2d_36/transpose:y:0*
T0*
_output_shapes
:l
"conv_lstm2d_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$conv_lstm2d_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$conv_lstm2d_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_lstm2d_36/strided_sliceStridedSliceconv_lstm2d_36/Shape:output:0+conv_lstm2d_36/strided_slice/stack:output:0-conv_lstm2d_36/strided_slice/stack_1:output:0-conv_lstm2d_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*conv_lstm2d_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv_lstm2d_36/TensorArrayV2TensorListReserve3conv_lstm2d_36/TensorArrayV2/element_shape:output:0%conv_lstm2d_36/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
conv_lstm2d_36/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ?
conv_lstm2d_36/ReverseV2	ReverseV2conv_lstm2d_36/transpose:y:0&conv_lstm2d_36/ReverseV2/axis:output:0*
T0*<
_output_shapes*
(:&??????????????????@@?
Dconv_lstm2d_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
6conv_lstm2d_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!conv_lstm2d_36/ReverseV2:output:0Mconv_lstm2d_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???n
$conv_lstm2d_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv_lstm2d_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv_lstm2d_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_lstm2d_36/strided_slice_1StridedSliceconv_lstm2d_36/transpose:y:0-conv_lstm2d_36/strided_slice_1/stack:output:0/conv_lstm2d_36/strided_slice_1/stack_1:output:0/conv_lstm2d_36/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@*
shrink_axis_masku
conv_lstm2d_36/ones_like/ShapeShape'conv_lstm2d_36/strided_slice_1:output:0*
T0*
_output_shapes
:c
conv_lstm2d_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
conv_lstm2d_36/ones_likeFill'conv_lstm2d_36/ones_like/Shape:output:0'conv_lstm2d_36/ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@s
 conv_lstm2d_36/ones_like_1/ShapeShape#conv_lstm2d_36/convolution:output:0*
T0*
_output_shapes
:e
 conv_lstm2d_36/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
conv_lstm2d_36/ones_like_1Fill)conv_lstm2d_36/ones_like_1/Shape:output:0)conv_lstm2d_36/ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mulMul'conv_lstm2d_36/strided_slice_1:output:0!conv_lstm2d_36/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/mul_1Mul'conv_lstm2d_36/strided_slice_1:output:0!conv_lstm2d_36/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/mul_2Mul'conv_lstm2d_36/strided_slice_1:output:0!conv_lstm2d_36/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/mul_3Mul'conv_lstm2d_36/strided_slice_1:output:0!conv_lstm2d_36/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/mul_4Mul#conv_lstm2d_36/convolution:output:0#conv_lstm2d_36/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mul_5Mul#conv_lstm2d_36/convolution:output:0#conv_lstm2d_36/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mul_6Mul#conv_lstm2d_36/convolution:output:0#conv_lstm2d_36/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mul_7Mul#conv_lstm2d_36/convolution:output:0#conv_lstm2d_36/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ `
conv_lstm2d_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
#conv_lstm2d_36/split/ReadVariableOpReadVariableOp,conv_lstm2d_36_split_readvariableop_resource*'
_output_shapes
:?*
dtype0?
conv_lstm2d_36/splitSplit'conv_lstm2d_36/split/split_dim:output:0+conv_lstm2d_36/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitb
 conv_lstm2d_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
%conv_lstm2d_36/split_1/ReadVariableOpReadVariableOp.conv_lstm2d_36_split_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
conv_lstm2d_36/split_1Split)conv_lstm2d_36/split_1/split_dim:output:0-conv_lstm2d_36/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitb
 conv_lstm2d_36/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
%conv_lstm2d_36/split_2/ReadVariableOpReadVariableOp.conv_lstm2d_36_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv_lstm2d_36/split_2Split)conv_lstm2d_36/split_2/split_dim:output:0-conv_lstm2d_36/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
conv_lstm2d_36/convolution_1Conv2Dconv_lstm2d_36/mul:z:0conv_lstm2d_36/split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/BiasAddBiasAdd%conv_lstm2d_36/convolution_1:output:0conv_lstm2d_36/split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/convolution_2Conv2Dconv_lstm2d_36/mul_1:z:0conv_lstm2d_36/split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/BiasAdd_1BiasAdd%conv_lstm2d_36/convolution_2:output:0conv_lstm2d_36/split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/convolution_3Conv2Dconv_lstm2d_36/mul_2:z:0conv_lstm2d_36/split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/BiasAdd_2BiasAdd%conv_lstm2d_36/convolution_3:output:0conv_lstm2d_36/split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/convolution_4Conv2Dconv_lstm2d_36/mul_3:z:0conv_lstm2d_36/split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/BiasAdd_3BiasAdd%conv_lstm2d_36/convolution_4:output:0conv_lstm2d_36/split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/convolution_5Conv2Dconv_lstm2d_36/mul_4:z:0conv_lstm2d_36/split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/convolution_6Conv2Dconv_lstm2d_36/mul_5:z:0conv_lstm2d_36/split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/convolution_7Conv2Dconv_lstm2d_36/mul_6:z:0conv_lstm2d_36/split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/convolution_8Conv2Dconv_lstm2d_36/mul_7:z:0conv_lstm2d_36/split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/addAddV2conv_lstm2d_36/BiasAdd:output:0%conv_lstm2d_36/convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ Y
conv_lstm2d_36/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>[
conv_lstm2d_36/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
conv_lstm2d_36/Mul_8Mulconv_lstm2d_36/add:z:0conv_lstm2d_36/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/Add_1AddV2conv_lstm2d_36/Mul_8:z:0conv_lstm2d_36/Const_1:output:0*
T0*/
_output_shapes
:?????????@@ k
&conv_lstm2d_36/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
$conv_lstm2d_36/clip_by_value/MinimumMinimumconv_lstm2d_36/Add_1:z:0/conv_lstm2d_36/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ c
conv_lstm2d_36/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv_lstm2d_36/clip_by_valueMaximum(conv_lstm2d_36/clip_by_value/Minimum:z:0'conv_lstm2d_36/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/add_2AddV2!conv_lstm2d_36/BiasAdd_1:output:0%conv_lstm2d_36/convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ [
conv_lstm2d_36/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>[
conv_lstm2d_36/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
conv_lstm2d_36/Mul_9Mulconv_lstm2d_36/add_2:z:0conv_lstm2d_36/Const_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/Add_3AddV2conv_lstm2d_36/Mul_9:z:0conv_lstm2d_36/Const_3:output:0*
T0*/
_output_shapes
:?????????@@ m
(conv_lstm2d_36/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
&conv_lstm2d_36/clip_by_value_1/MinimumMinimumconv_lstm2d_36/Add_3:z:01conv_lstm2d_36/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ e
 conv_lstm2d_36/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv_lstm2d_36/clip_by_value_1Maximum*conv_lstm2d_36/clip_by_value_1/Minimum:z:0)conv_lstm2d_36/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mul_10Mul"conv_lstm2d_36/clip_by_value_1:z:0#conv_lstm2d_36/convolution:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/add_4AddV2!conv_lstm2d_36/BiasAdd_2:output:0%conv_lstm2d_36/convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ o
conv_lstm2d_36/TanhTanhconv_lstm2d_36/add_4:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mul_11Mul conv_lstm2d_36/clip_by_value:z:0conv_lstm2d_36/Tanh:y:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/add_5AddV2conv_lstm2d_36/mul_10:z:0conv_lstm2d_36/mul_11:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/add_6AddV2!conv_lstm2d_36/BiasAdd_3:output:0%conv_lstm2d_36/convolution_8:output:0*
T0*/
_output_shapes
:?????????@@ [
conv_lstm2d_36/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>[
conv_lstm2d_36/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
conv_lstm2d_36/Mul_12Mulconv_lstm2d_36/add_6:z:0conv_lstm2d_36/Const_4:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/Add_7AddV2conv_lstm2d_36/Mul_12:z:0conv_lstm2d_36/Const_5:output:0*
T0*/
_output_shapes
:?????????@@ m
(conv_lstm2d_36/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
&conv_lstm2d_36/clip_by_value_2/MinimumMinimumconv_lstm2d_36/Add_7:z:01conv_lstm2d_36/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ e
 conv_lstm2d_36/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv_lstm2d_36/clip_by_value_2Maximum*conv_lstm2d_36/clip_by_value_2/Minimum:z:0)conv_lstm2d_36/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ q
conv_lstm2d_36/Tanh_1Tanhconv_lstm2d_36/add_5:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mul_13Mul"conv_lstm2d_36/clip_by_value_2:z:0conv_lstm2d_36/Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ ?
,conv_lstm2d_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
conv_lstm2d_36/TensorArrayV2_1TensorListReserve5conv_lstm2d_36/TensorArrayV2_1/element_shape:output:0%conv_lstm2d_36/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???U
conv_lstm2d_36/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'conv_lstm2d_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????c
!conv_lstm2d_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
conv_lstm2d_36/whileWhile*conv_lstm2d_36/while/loop_counter:output:00conv_lstm2d_36/while/maximum_iterations:output:0conv_lstm2d_36/time:output:0'conv_lstm2d_36/TensorArrayV2_1:handle:0#conv_lstm2d_36/convolution:output:0#conv_lstm2d_36/convolution:output:0%conv_lstm2d_36/strided_slice:output:0Fconv_lstm2d_36/TensorArrayUnstack/TensorListFromTensor:output_handle:0,conv_lstm2d_36_split_readvariableop_resource.conv_lstm2d_36_split_1_readvariableop_resource.conv_lstm2d_36_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 conv_lstm2d_36_while_body_102289*,
cond$R"
 conv_lstm2d_36_while_cond_102288*[
output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *
parallel_iterations ?
?conv_lstm2d_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
1conv_lstm2d_36/TensorArrayV2Stack/TensorListStackTensorListStackconv_lstm2d_36/while:output:3Hconv_lstm2d_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????@@ *
element_dtype0w
$conv_lstm2d_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????p
&conv_lstm2d_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&conv_lstm2d_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_lstm2d_36/strided_slice_2StridedSlice:conv_lstm2d_36/TensorArrayV2Stack/TensorListStack:tensor:0-conv_lstm2d_36/strided_slice_2/stack:output:0/conv_lstm2d_36/strided_slice_2/stack_1:output:0/conv_lstm2d_36/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@ *
shrink_axis_mask|
conv_lstm2d_36/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
conv_lstm2d_36/transpose_1	Transpose:conv_lstm2d_36/TensorArrayV2Stack/TensorListStack:tensor:0(conv_lstm2d_36/transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@ ?
%batch_normalization_36/ReadVariableOpReadVariableOp.batch_normalization_36_readvariableop_resource*
_output_shapes
: *
dtype0?
'batch_normalization_36/ReadVariableOp_1ReadVariableOp0batch_normalization_36_readvariableop_1_resource*
_output_shapes
: *
dtype0?
6batch_normalization_36/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_36_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
8batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_36_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
'batch_normalization_36/FusedBatchNormV3FusedBatchNormV3conv_lstm2d_36/transpose_1:y:0-batch_normalization_36/ReadVariableOp:value:0/batch_normalization_36/ReadVariableOp_1:value:0>batch_normalization_36/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*X
_output_shapesF
D:&??????????????????@@ : : : : :*
data_formatNDHWC*
epsilon%o?:*
is_training( ?
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0?
conv3d_5/Conv3DConv3D+batch_normalization_36/FusedBatchNormV3:y:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????@@*
paddingSAME*
strides	
?
conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????@@}
conv3d_5/SigmoidSigmoidconv3d_5/BiasAdd:output:0*
T0*<
_output_shapes*
(:&??????????????????@@]
tf.math.multiply_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?D?
tf.math.multiply_5/MulMulconv3d_5/Sigmoid:y:0!tf.math.multiply_5/Mul/y:output:0*
T0*<
_output_shapes*
(:&??????????????????@@~
IdentityIdentitytf.math.multiply_5/Mul:z:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@?
NoOpNoOp7^batch_normalization_36/FusedBatchNormV3/ReadVariableOp9^batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_36/ReadVariableOp(^batch_normalization_36/ReadVariableOp_1 ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp$^conv_lstm2d_36/split/ReadVariableOp&^conv_lstm2d_36/split_1/ReadVariableOp&^conv_lstm2d_36/split_2/ReadVariableOp^conv_lstm2d_36/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::&??????????????????@@: : : : : : : : : 2p
6batch_normalization_36/FusedBatchNormV3/ReadVariableOp6batch_normalization_36/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_36/FusedBatchNormV3/ReadVariableOp_18batch_normalization_36/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_36/ReadVariableOp%batch_normalization_36/ReadVariableOp2R
'batch_normalization_36/ReadVariableOp_1'batch_normalization_36/ReadVariableOp_12B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp2J
#conv_lstm2d_36/split/ReadVariableOp#conv_lstm2d_36/split/ReadVariableOp2N
%conv_lstm2d_36/split_1/ReadVariableOp%conv_lstm2d_36/split_1/ReadVariableOp2N
%conv_lstm2d_36/split_2/ReadVariableOp%conv_lstm2d_36/split_2/ReadVariableOp2,
conv_lstm2d_36/whileconv_lstm2d_36/while:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
?
?
C__inference_model_5_layer_call_and_return_conditional_losses_102102
input_60
conv_lstm2d_36_102078:?0
conv_lstm2d_36_102080: ?$
conv_lstm2d_36_102082:	?+
batch_normalization_36_102085: +
batch_normalization_36_102087: +
batch_normalization_36_102089: +
batch_normalization_36_102091: -
conv3d_5_102094: 
conv3d_5_102096:
identity??.batch_normalization_36/StatefulPartitionedCall? conv3d_5/StatefulPartitionedCall?&conv_lstm2d_36/StatefulPartitionedCall?
&conv_lstm2d_36/StatefulPartitionedCallStatefulPartitionedCallinput_6conv_lstm2d_36_102078conv_lstm2d_36_102080conv_lstm2d_36_102082*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_101943?
.batch_normalization_36/StatefulPartitionedCallStatefulPartitionedCall/conv_lstm2d_36/StatefulPartitionedCall:output:0batch_normalization_36_102085batch_normalization_36_102087batch_normalization_36_102089batch_normalization_36_102091*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_101541?
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_36/StatefulPartitionedCall:output:0conv3d_5_102094conv3d_5_102096*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_101468]
tf.math.multiply_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?D?
tf.math.multiply_5/MulMul)conv3d_5/StatefulPartitionedCall:output:0!tf.math.multiply_5/Mul/y:output:0*
T0*<
_output_shapes*
(:&??????????????????@@~
IdentityIdentitytf.math.multiply_5/Mul:z:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@?
NoOpNoOp/^batch_normalization_36/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall'^conv_lstm2d_36/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::&??????????????????@@: : : : : : : : : 2`
.batch_normalization_36/StatefulPartitionedCall.batch_normalization_36/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2P
&conv_lstm2d_36/StatefulPartitionedCall&conv_lstm2d_36/StatefulPartitionedCall:e a
<
_output_shapes*
(:&??????????????????@@
!
_user_specified_name	input_6
?!
?
while_body_101025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_101049_0:?)
while_101051_0: ?
while_101053_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_101049:?'
while_101051: ?
while_101053:	???while/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????@@*
element_dtype0?
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_101049_0while_101051_0while_101053_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????@@ :?????????@@ :?????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_100972?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/NoOp*
T0*/
_output_shapes
:?????????@@ ?
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/NoOp*
T0*/
_output_shapes
:?????????@@ l

while/NoOpNoOp^while/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
while_101049while_101049_0"
while_101051while_101051_0"
while_101053while_101053_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
: 
?g
?
while_body_103635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????@@*
element_dtype0u
while/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:Z
while/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/ones_likeFillwhile/ones_like/Shape:output:0while/ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@Z
while/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:\
while/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/ones_like_1Fill while/ones_like_1/Shape:output:0 while/ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
	while/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
while/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
while/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
while/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@}
while/mul_4Mulwhile_placeholder_2while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_5Mulwhile_placeholder_2while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_6Mulwhile_placeholder_2while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_7Mulwhile_placeholder_2while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype0?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype0?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
while/convolutionConv2Dwhile/mul:z:0while/split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_1Conv2Dwhile/mul_1:z:0while/split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_2Conv2Dwhile/mul_2:z:0while/split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_3Conv2Dwhile/mul_3:z:0while/split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_4Conv2Dwhile/mul_4:z:0while/split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_5Conv2Dwhile/mul_5:z:0while/split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_6Conv2Dwhile/mul_6:z:0while/split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_7Conv2Dwhile/mul_7:z:0while/split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?q
while/Mul_8Mulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????@@ w
while/Add_1AddV2while/Mul_8:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????@@ b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_9Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????@@ w
while/Add_3AddV2while/Mul_9:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????@@ d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ \
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_10Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????@@ ?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ ]

while/TanhTanhwhile/add_4:z:0*
T0*/
_output_shapes
:?????????@@ v
while/mul_11Mulwhile/clip_by_value:z:0while/Tanh:y:0*
T0*/
_output_shapes
:?????????@@ r
while/add_5AddV2while/mul_10:z:0while/mul_11:z:0*
T0*/
_output_shapes
:?????????@@ ?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_12Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????@@ x
while/Add_7AddV2while/Mul_12:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????@@ d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ \
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ _
while/Tanh_1Tanhwhile/add_5:z:0*
T0*/
_output_shapes
:?????????@@ z
while/mul_13Mulwhile/clip_by_value_2:z:0while/Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ ?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_13:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: u
while/Identity_4Identitywhile/mul_13:z:0^while/NoOp*
T0*/
_output_shapes
:?????????@@ t
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????@@ ?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
: 
?	
?
7__inference_batch_normalization_36_layer_call_fn_104192

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_101447?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????@@ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????@@ 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_101447

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*X
_output_shapesF
D:&??????????????????@@ : : : : :*
data_formatNDHWC*
epsilon%o?:*
is_training( x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????@@ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:d `
<
_output_shapes*
(:&??????????????????@@ 
 
_user_specified_nameinputs
?
?
while_cond_100719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_100719___redundant_placeholder04
0while_while_cond_100719___redundant_placeholder14
0while_while_cond_100719___redundant_placeholder24
0while_while_cond_100719___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????@@ :?????????@@ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
:
?
?
while_cond_101281
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_101281___redundant_placeholder04
0while_while_cond_101281___redundant_placeholder14
0while_while_cond_101281___redundant_placeholder24
0while_while_cond_101281___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????@@ :?????????@@ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
:
?3
?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_101093

inputs"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?whilef

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????@@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@@j
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    ?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ~
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ?
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*<
_output_shapes*
(:&??????????????????@@?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@*
shrink_axis_mask?
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????@@ :?????????@@ :?????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_100972v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_101025*
condR
while_cond_101024*[
output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????@@ *
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@ *
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@ s
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ h
NoOpNoOp^StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????@@: : : 22
StatefulPartitionedCallStatefulPartitionedCall2
whilewhile:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
??
?
 conv_lstm2d_36_while_body_102626:
6conv_lstm2d_36_while_conv_lstm2d_36_while_loop_counter@
<conv_lstm2d_36_while_conv_lstm2d_36_while_maximum_iterations$
 conv_lstm2d_36_while_placeholder&
"conv_lstm2d_36_while_placeholder_1&
"conv_lstm2d_36_while_placeholder_2&
"conv_lstm2d_36_while_placeholder_37
3conv_lstm2d_36_while_conv_lstm2d_36_strided_slice_0u
qconv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensor_0O
4conv_lstm2d_36_while_split_readvariableop_resource_0:?Q
6conv_lstm2d_36_while_split_1_readvariableop_resource_0: ?E
6conv_lstm2d_36_while_split_2_readvariableop_resource_0:	?!
conv_lstm2d_36_while_identity#
conv_lstm2d_36_while_identity_1#
conv_lstm2d_36_while_identity_2#
conv_lstm2d_36_while_identity_3#
conv_lstm2d_36_while_identity_4#
conv_lstm2d_36_while_identity_55
1conv_lstm2d_36_while_conv_lstm2d_36_strided_slices
oconv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensorM
2conv_lstm2d_36_while_split_readvariableop_resource:?O
4conv_lstm2d_36_while_split_1_readvariableop_resource: ?C
4conv_lstm2d_36_while_split_2_readvariableop_resource:	???)conv_lstm2d_36/while/split/ReadVariableOp?+conv_lstm2d_36/while/split_1/ReadVariableOp?+conv_lstm2d_36/while/split_2/ReadVariableOp?
Fconv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
8conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqconv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensor_0 conv_lstm2d_36_while_placeholderOconv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????@@*
element_dtype0?
$conv_lstm2d_36/while/ones_like/ShapeShape?conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:i
$conv_lstm2d_36/while/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
conv_lstm2d_36/while/ones_likeFill-conv_lstm2d_36/while/ones_like/Shape:output:0-conv_lstm2d_36/while/ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@g
"conv_lstm2d_36/while/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
 conv_lstm2d_36/while/dropout/MulMul'conv_lstm2d_36/while/ones_like:output:0+conv_lstm2d_36/while/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@y
"conv_lstm2d_36/while/dropout/ShapeShape'conv_lstm2d_36/while/ones_like:output:0*
T0*
_output_shapes
:?
9conv_lstm2d_36/while/dropout/random_uniform/RandomUniformRandomUniform+conv_lstm2d_36/while/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2??p
+conv_lstm2d_36/while/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
)conv_lstm2d_36/while/dropout/GreaterEqualGreaterEqualBconv_lstm2d_36/while/dropout/random_uniform/RandomUniform:output:04conv_lstm2d_36/while/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
!conv_lstm2d_36/while/dropout/CastCast-conv_lstm2d_36/while/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
"conv_lstm2d_36/while/dropout/Mul_1Mul$conv_lstm2d_36/while/dropout/Mul:z:0%conv_lstm2d_36/while/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@i
$conv_lstm2d_36/while/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
"conv_lstm2d_36/while/dropout_1/MulMul'conv_lstm2d_36/while/ones_like:output:0-conv_lstm2d_36/while/dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????@@{
$conv_lstm2d_36/while/dropout_1/ShapeShape'conv_lstm2d_36/while/ones_like:output:0*
T0*
_output_shapes
:?
;conv_lstm2d_36/while/dropout_1/random_uniform/RandomUniformRandomUniform-conv_lstm2d_36/while/dropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???r
-conv_lstm2d_36/while/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
+conv_lstm2d_36/while/dropout_1/GreaterEqualGreaterEqualDconv_lstm2d_36/while/dropout_1/random_uniform/RandomUniform:output:06conv_lstm2d_36/while/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
#conv_lstm2d_36/while/dropout_1/CastCast/conv_lstm2d_36/while/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
$conv_lstm2d_36/while/dropout_1/Mul_1Mul&conv_lstm2d_36/while/dropout_1/Mul:z:0'conv_lstm2d_36/while/dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????@@i
$conv_lstm2d_36/while/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
"conv_lstm2d_36/while/dropout_2/MulMul'conv_lstm2d_36/while/ones_like:output:0-conv_lstm2d_36/while/dropout_2/Const:output:0*
T0*/
_output_shapes
:?????????@@{
$conv_lstm2d_36/while/dropout_2/ShapeShape'conv_lstm2d_36/while/ones_like:output:0*
T0*
_output_shapes
:?
;conv_lstm2d_36/while/dropout_2/random_uniform/RandomUniformRandomUniform-conv_lstm2d_36/while/dropout_2/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???r
-conv_lstm2d_36/while/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
+conv_lstm2d_36/while/dropout_2/GreaterEqualGreaterEqualDconv_lstm2d_36/while/dropout_2/random_uniform/RandomUniform:output:06conv_lstm2d_36/while/dropout_2/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
#conv_lstm2d_36/while/dropout_2/CastCast/conv_lstm2d_36/while/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
$conv_lstm2d_36/while/dropout_2/Mul_1Mul&conv_lstm2d_36/while/dropout_2/Mul:z:0'conv_lstm2d_36/while/dropout_2/Cast:y:0*
T0*/
_output_shapes
:?????????@@i
$conv_lstm2d_36/while/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
"conv_lstm2d_36/while/dropout_3/MulMul'conv_lstm2d_36/while/ones_like:output:0-conv_lstm2d_36/while/dropout_3/Const:output:0*
T0*/
_output_shapes
:?????????@@{
$conv_lstm2d_36/while/dropout_3/ShapeShape'conv_lstm2d_36/while/ones_like:output:0*
T0*
_output_shapes
:?
;conv_lstm2d_36/while/dropout_3/random_uniform/RandomUniformRandomUniform-conv_lstm2d_36/while/dropout_3/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2?׉r
-conv_lstm2d_36/while/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
+conv_lstm2d_36/while/dropout_3/GreaterEqualGreaterEqualDconv_lstm2d_36/while/dropout_3/random_uniform/RandomUniform:output:06conv_lstm2d_36/while/dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
#conv_lstm2d_36/while/dropout_3/CastCast/conv_lstm2d_36/while/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
$conv_lstm2d_36/while/dropout_3/Mul_1Mul&conv_lstm2d_36/while/dropout_3/Mul:z:0'conv_lstm2d_36/while/dropout_3/Cast:y:0*
T0*/
_output_shapes
:?????????@@x
&conv_lstm2d_36/while/ones_like_1/ShapeShape"conv_lstm2d_36_while_placeholder_2*
T0*
_output_shapes
:k
&conv_lstm2d_36/while/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
 conv_lstm2d_36/while/ones_like_1Fill/conv_lstm2d_36/while/ones_like_1/Shape:output:0/conv_lstm2d_36/while/ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ i
$conv_lstm2d_36/while/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
"conv_lstm2d_36/while/dropout_4/MulMul)conv_lstm2d_36/while/ones_like_1:output:0-conv_lstm2d_36/while/dropout_4/Const:output:0*
T0*/
_output_shapes
:?????????@@ }
$conv_lstm2d_36/while/dropout_4/ShapeShape)conv_lstm2d_36/while/ones_like_1:output:0*
T0*
_output_shapes
:?
;conv_lstm2d_36/while/dropout_4/random_uniform/RandomUniformRandomUniform-conv_lstm2d_36/while/dropout_4/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???r
-conv_lstm2d_36/while/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
+conv_lstm2d_36/while/dropout_4/GreaterEqualGreaterEqualDconv_lstm2d_36/while/dropout_4/random_uniform/RandomUniform:output:06conv_lstm2d_36/while/dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
#conv_lstm2d_36/while/dropout_4/CastCast/conv_lstm2d_36/while/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
$conv_lstm2d_36/while/dropout_4/Mul_1Mul&conv_lstm2d_36/while/dropout_4/Mul:z:0'conv_lstm2d_36/while/dropout_4/Cast:y:0*
T0*/
_output_shapes
:?????????@@ i
$conv_lstm2d_36/while/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
"conv_lstm2d_36/while/dropout_5/MulMul)conv_lstm2d_36/while/ones_like_1:output:0-conv_lstm2d_36/while/dropout_5/Const:output:0*
T0*/
_output_shapes
:?????????@@ }
$conv_lstm2d_36/while/dropout_5/ShapeShape)conv_lstm2d_36/while/ones_like_1:output:0*
T0*
_output_shapes
:?
;conv_lstm2d_36/while/dropout_5/random_uniform/RandomUniformRandomUniform-conv_lstm2d_36/while/dropout_5/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???r
-conv_lstm2d_36/while/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
+conv_lstm2d_36/while/dropout_5/GreaterEqualGreaterEqualDconv_lstm2d_36/while/dropout_5/random_uniform/RandomUniform:output:06conv_lstm2d_36/while/dropout_5/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
#conv_lstm2d_36/while/dropout_5/CastCast/conv_lstm2d_36/while/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
$conv_lstm2d_36/while/dropout_5/Mul_1Mul&conv_lstm2d_36/while/dropout_5/Mul:z:0'conv_lstm2d_36/while/dropout_5/Cast:y:0*
T0*/
_output_shapes
:?????????@@ i
$conv_lstm2d_36/while/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
"conv_lstm2d_36/while/dropout_6/MulMul)conv_lstm2d_36/while/ones_like_1:output:0-conv_lstm2d_36/while/dropout_6/Const:output:0*
T0*/
_output_shapes
:?????????@@ }
$conv_lstm2d_36/while/dropout_6/ShapeShape)conv_lstm2d_36/while/ones_like_1:output:0*
T0*
_output_shapes
:?
;conv_lstm2d_36/while/dropout_6/random_uniform/RandomUniformRandomUniform-conv_lstm2d_36/while/dropout_6/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???r
-conv_lstm2d_36/while/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
+conv_lstm2d_36/while/dropout_6/GreaterEqualGreaterEqualDconv_lstm2d_36/while/dropout_6/random_uniform/RandomUniform:output:06conv_lstm2d_36/while/dropout_6/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
#conv_lstm2d_36/while/dropout_6/CastCast/conv_lstm2d_36/while/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
$conv_lstm2d_36/while/dropout_6/Mul_1Mul&conv_lstm2d_36/while/dropout_6/Mul:z:0'conv_lstm2d_36/while/dropout_6/Cast:y:0*
T0*/
_output_shapes
:?????????@@ i
$conv_lstm2d_36/while/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
"conv_lstm2d_36/while/dropout_7/MulMul)conv_lstm2d_36/while/ones_like_1:output:0-conv_lstm2d_36/while/dropout_7/Const:output:0*
T0*/
_output_shapes
:?????????@@ }
$conv_lstm2d_36/while/dropout_7/ShapeShape)conv_lstm2d_36/while/ones_like_1:output:0*
T0*
_output_shapes
:?
;conv_lstm2d_36/while/dropout_7/random_uniform/RandomUniformRandomUniform-conv_lstm2d_36/while/dropout_7/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???r
-conv_lstm2d_36/while/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
+conv_lstm2d_36/while/dropout_7/GreaterEqualGreaterEqualDconv_lstm2d_36/while/dropout_7/random_uniform/RandomUniform:output:06conv_lstm2d_36/while/dropout_7/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
#conv_lstm2d_36/while/dropout_7/CastCast/conv_lstm2d_36/while/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
$conv_lstm2d_36/while/dropout_7/Mul_1Mul&conv_lstm2d_36/while/dropout_7/Mul:z:0'conv_lstm2d_36/while/dropout_7/Cast:y:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mulMul?conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0&conv_lstm2d_36/while/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/while/mul_1Mul?conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0(conv_lstm2d_36/while/dropout_1/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/while/mul_2Mul?conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0(conv_lstm2d_36/while/dropout_2/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/while/mul_3Mul?conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0(conv_lstm2d_36/while/dropout_3/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/while/mul_4Mul"conv_lstm2d_36_while_placeholder_2(conv_lstm2d_36/while/dropout_4/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mul_5Mul"conv_lstm2d_36_while_placeholder_2(conv_lstm2d_36/while/dropout_5/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mul_6Mul"conv_lstm2d_36_while_placeholder_2(conv_lstm2d_36/while/dropout_6/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mul_7Mul"conv_lstm2d_36_while_placeholder_2(conv_lstm2d_36/while/dropout_7/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ f
$conv_lstm2d_36/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
)conv_lstm2d_36/while/split/ReadVariableOpReadVariableOp4conv_lstm2d_36_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype0?
conv_lstm2d_36/while/splitSplit-conv_lstm2d_36/while/split/split_dim:output:01conv_lstm2d_36/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splith
&conv_lstm2d_36/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+conv_lstm2d_36/while/split_1/ReadVariableOpReadVariableOp6conv_lstm2d_36_while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype0?
conv_lstm2d_36/while/split_1Split/conv_lstm2d_36/while/split_1/split_dim:output:03conv_lstm2d_36/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splith
&conv_lstm2d_36/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
+conv_lstm2d_36/while/split_2/ReadVariableOpReadVariableOp6conv_lstm2d_36_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
conv_lstm2d_36/while/split_2Split/conv_lstm2d_36/while/split_2/split_dim:output:03conv_lstm2d_36/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
 conv_lstm2d_36/while/convolutionConv2Dconv_lstm2d_36/while/mul:z:0#conv_lstm2d_36/while/split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/while/BiasAddBiasAdd)conv_lstm2d_36/while/convolution:output:0%conv_lstm2d_36/while/split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
"conv_lstm2d_36/while/convolution_1Conv2Dconv_lstm2d_36/while/mul_1:z:0#conv_lstm2d_36/while/split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/while/BiasAdd_1BiasAdd+conv_lstm2d_36/while/convolution_1:output:0%conv_lstm2d_36/while/split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
"conv_lstm2d_36/while/convolution_2Conv2Dconv_lstm2d_36/while/mul_2:z:0#conv_lstm2d_36/while/split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/while/BiasAdd_2BiasAdd+conv_lstm2d_36/while/convolution_2:output:0%conv_lstm2d_36/while/split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
"conv_lstm2d_36/while/convolution_3Conv2Dconv_lstm2d_36/while/mul_3:z:0#conv_lstm2d_36/while/split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/while/BiasAdd_3BiasAdd+conv_lstm2d_36/while/convolution_3:output:0%conv_lstm2d_36/while/split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
"conv_lstm2d_36/while/convolution_4Conv2Dconv_lstm2d_36/while/mul_4:z:0%conv_lstm2d_36/while/split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
"conv_lstm2d_36/while/convolution_5Conv2Dconv_lstm2d_36/while/mul_5:z:0%conv_lstm2d_36/while/split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
"conv_lstm2d_36/while/convolution_6Conv2Dconv_lstm2d_36/while/mul_6:z:0%conv_lstm2d_36/while/split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
"conv_lstm2d_36/while/convolution_7Conv2Dconv_lstm2d_36/while/mul_7:z:0%conv_lstm2d_36/while/split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/while/addAddV2%conv_lstm2d_36/while/BiasAdd:output:0+conv_lstm2d_36/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ _
conv_lstm2d_36/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>a
conv_lstm2d_36/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
conv_lstm2d_36/while/Mul_8Mulconv_lstm2d_36/while/add:z:0#conv_lstm2d_36/while/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/Add_1AddV2conv_lstm2d_36/while/Mul_8:z:0%conv_lstm2d_36/while/Const_1:output:0*
T0*/
_output_shapes
:?????????@@ q
,conv_lstm2d_36/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
*conv_lstm2d_36/while/clip_by_value/MinimumMinimumconv_lstm2d_36/while/Add_1:z:05conv_lstm2d_36/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ i
$conv_lstm2d_36/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
"conv_lstm2d_36/while/clip_by_valueMaximum.conv_lstm2d_36/while/clip_by_value/Minimum:z:0-conv_lstm2d_36/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/add_2AddV2'conv_lstm2d_36/while/BiasAdd_1:output:0+conv_lstm2d_36/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ a
conv_lstm2d_36/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>a
conv_lstm2d_36/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
conv_lstm2d_36/while/Mul_9Mulconv_lstm2d_36/while/add_2:z:0%conv_lstm2d_36/while/Const_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/Add_3AddV2conv_lstm2d_36/while/Mul_9:z:0%conv_lstm2d_36/while/Const_3:output:0*
T0*/
_output_shapes
:?????????@@ s
.conv_lstm2d_36/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
,conv_lstm2d_36/while/clip_by_value_1/MinimumMinimumconv_lstm2d_36/while/Add_3:z:07conv_lstm2d_36/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ k
&conv_lstm2d_36/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
$conv_lstm2d_36/while/clip_by_value_1Maximum0conv_lstm2d_36/while/clip_by_value_1/Minimum:z:0/conv_lstm2d_36/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mul_10Mul(conv_lstm2d_36/while/clip_by_value_1:z:0"conv_lstm2d_36_while_placeholder_3*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/add_4AddV2'conv_lstm2d_36/while/BiasAdd_2:output:0+conv_lstm2d_36/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ {
conv_lstm2d_36/while/TanhTanhconv_lstm2d_36/while/add_4:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mul_11Mul&conv_lstm2d_36/while/clip_by_value:z:0conv_lstm2d_36/while/Tanh:y:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/add_5AddV2conv_lstm2d_36/while/mul_10:z:0conv_lstm2d_36/while/mul_11:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/add_6AddV2'conv_lstm2d_36/while/BiasAdd_3:output:0+conv_lstm2d_36/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ a
conv_lstm2d_36/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>a
conv_lstm2d_36/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
conv_lstm2d_36/while/Mul_12Mulconv_lstm2d_36/while/add_6:z:0%conv_lstm2d_36/while/Const_4:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/Add_7AddV2conv_lstm2d_36/while/Mul_12:z:0%conv_lstm2d_36/while/Const_5:output:0*
T0*/
_output_shapes
:?????????@@ s
.conv_lstm2d_36/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
,conv_lstm2d_36/while/clip_by_value_2/MinimumMinimumconv_lstm2d_36/while/Add_7:z:07conv_lstm2d_36/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ k
&conv_lstm2d_36/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
$conv_lstm2d_36/while/clip_by_value_2Maximum0conv_lstm2d_36/while/clip_by_value_2/Minimum:z:0/conv_lstm2d_36/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ }
conv_lstm2d_36/while/Tanh_1Tanhconv_lstm2d_36/while/add_5:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/mul_13Mul(conv_lstm2d_36/while/clip_by_value_2:z:0conv_lstm2d_36/while/Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ ?
9conv_lstm2d_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"conv_lstm2d_36_while_placeholder_1 conv_lstm2d_36_while_placeholderconv_lstm2d_36/while/mul_13:z:0*
_output_shapes
: *
element_dtype0:???^
conv_lstm2d_36/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv_lstm2d_36/while/add_8AddV2 conv_lstm2d_36_while_placeholder%conv_lstm2d_36/while/add_8/y:output:0*
T0*
_output_shapes
: ^
conv_lstm2d_36/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv_lstm2d_36/while/add_9AddV26conv_lstm2d_36_while_conv_lstm2d_36_while_loop_counter%conv_lstm2d_36/while/add_9/y:output:0*
T0*
_output_shapes
: ?
conv_lstm2d_36/while/IdentityIdentityconv_lstm2d_36/while/add_9:z:0^conv_lstm2d_36/while/NoOp*
T0*
_output_shapes
: ?
conv_lstm2d_36/while/Identity_1Identity<conv_lstm2d_36_while_conv_lstm2d_36_while_maximum_iterations^conv_lstm2d_36/while/NoOp*
T0*
_output_shapes
: ?
conv_lstm2d_36/while/Identity_2Identityconv_lstm2d_36/while/add_8:z:0^conv_lstm2d_36/while/NoOp*
T0*
_output_shapes
: ?
conv_lstm2d_36/while/Identity_3IdentityIconv_lstm2d_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lstm2d_36/while/NoOp*
T0*
_output_shapes
: ?
conv_lstm2d_36/while/Identity_4Identityconv_lstm2d_36/while/mul_13:z:0^conv_lstm2d_36/while/NoOp*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/Identity_5Identityconv_lstm2d_36/while/add_5:z:0^conv_lstm2d_36/while/NoOp*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/while/NoOpNoOp*^conv_lstm2d_36/while/split/ReadVariableOp,^conv_lstm2d_36/while/split_1/ReadVariableOp,^conv_lstm2d_36/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1conv_lstm2d_36_while_conv_lstm2d_36_strided_slice3conv_lstm2d_36_while_conv_lstm2d_36_strided_slice_0"G
conv_lstm2d_36_while_identity&conv_lstm2d_36/while/Identity:output:0"K
conv_lstm2d_36_while_identity_1(conv_lstm2d_36/while/Identity_1:output:0"K
conv_lstm2d_36_while_identity_2(conv_lstm2d_36/while/Identity_2:output:0"K
conv_lstm2d_36_while_identity_3(conv_lstm2d_36/while/Identity_3:output:0"K
conv_lstm2d_36_while_identity_4(conv_lstm2d_36/while/Identity_4:output:0"K
conv_lstm2d_36_while_identity_5(conv_lstm2d_36/while/Identity_5:output:0"n
4conv_lstm2d_36_while_split_1_readvariableop_resource6conv_lstm2d_36_while_split_1_readvariableop_resource_0"n
4conv_lstm2d_36_while_split_2_readvariableop_resource6conv_lstm2d_36_while_split_2_readvariableop_resource_0"j
2conv_lstm2d_36_while_split_readvariableop_resource4conv_lstm2d_36_while_split_readvariableop_resource_0"?
oconv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensorqconv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : 2V
)conv_lstm2d_36/while/split/ReadVariableOp)conv_lstm2d_36/while/split/ReadVariableOp2Z
+conv_lstm2d_36/while/split_1/ReadVariableOp+conv_lstm2d_36/while/split_1/ReadVariableOp2Z
+conv_lstm2d_36/while/split_2/ReadVariableOp+conv_lstm2d_36/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_103634
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_103634___redundant_placeholder04
0while_while_cond_103634___redundant_placeholder14
0while_while_cond_103634___redundant_placeholder24
0while_while_cond_103634___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????@@ :?????????@@ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
:
?
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_101155

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*j
_output_shapesX
V:8???????????????????????????????????? : : : : :*
data_formatNDHWC*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*N
_output_shapes<
::8???????????????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
Ѯ
?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_101943

inputs8
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilef

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????@@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@@j
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    ?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ~
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ?
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*<
_output_shapes*
(:&??????????????????@@?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@*
shrink_axis_maskW
ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?x
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*/
_output_shapes
:?????????@@U
ones_like_1/ShapeShapeconvolution:output:0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2Ō?]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2ҿ?]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2ض?]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*/
_output_shapes
:?????????@@ q
mulMulstrided_slice_1:output:0dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@u
mul_1Mulstrided_slice_1:output:0dropout_1/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@u
mul_2Mulstrided_slice_1:output:0dropout_2/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@u
mul_3Mulstrided_slice_1:output:0dropout_3/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@q
mul_4Mulconvolution:output:0dropout_4/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ q
mul_5Mulconvolution:output:0dropout_5/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ q
mul_6Mulconvolution:output:0dropout_6/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ q
mul_7Mulconvolution:output:0dropout_7/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype0?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
convolution_1Conv2Dmul:z:0split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
v
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
convolution_2Conv2D	mul_1:z:0split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
convolution_3Conv2D	mul_2:z:0split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
convolution_4Conv2D	mul_3:z:0split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
convolution_5Conv2D	mul_4:z:0split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_6Conv2D	mul_5:z:0split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_7Conv2D	mul_6:z:0split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_8Conv2D	mul_7:z:0split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?_
Mul_8Muladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????@@ \
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ t
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_10Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????@@ t
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ Q
TanhTanh	add_4:z:0*
T0*/
_output_shapes
:?????????@@ d
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*/
_output_shapes
:?????????@@ `
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*/
_output_shapes
:?????????@@ t
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????@@ f
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ S
Tanh_1Tanh	add_5:z:0*
T0*/
_output_shapes
:?????????@@ h
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_101739*
condR
while_cond_101738*[
output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????@@ *
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@ *
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@ s
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ ?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????@@: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
?o
?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_103775

inputs8
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilef

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????@@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@@j
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    ?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ~
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ?
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*<
_output_shapes*
(:&??????????????????@@?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@*
shrink_axis_maskW
ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@U
ones_like_1/ShapeShapeconvolution:output:0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ r
mulMulstrided_slice_1:output:0ones_like:output:0*
T0*/
_output_shapes
:?????????@@t
mul_1Mulstrided_slice_1:output:0ones_like:output:0*
T0*/
_output_shapes
:?????????@@t
mul_2Mulstrided_slice_1:output:0ones_like:output:0*
T0*/
_output_shapes
:?????????@@t
mul_3Mulstrided_slice_1:output:0ones_like:output:0*
T0*/
_output_shapes
:?????????@@r
mul_4Mulconvolution:output:0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_5Mulconvolution:output:0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_6Mulconvolution:output:0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_7Mulconvolution:output:0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype0?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
convolution_1Conv2Dmul:z:0split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
v
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
convolution_2Conv2D	mul_1:z:0split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
convolution_3Conv2D	mul_2:z:0split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
convolution_4Conv2D	mul_3:z:0split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
convolution_5Conv2D	mul_4:z:0split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_6Conv2D	mul_5:z:0split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_7Conv2D	mul_6:z:0split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_8Conv2D	mul_7:z:0split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?_
Mul_8Muladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????@@ \
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ t
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_10Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????@@ t
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ Q
TanhTanh	add_4:z:0*
T0*/
_output_shapes
:?????????@@ d
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*/
_output_shapes
:?????????@@ `
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*/
_output_shapes
:?????????@@ t
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????@@ f
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ S
Tanh_1Tanh	add_5:z:0*
T0*/
_output_shapes
:?????????@@ h
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_103635*
condR
while_cond_103634*[
output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????@@ *
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@ *
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@ s
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ ?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????@@: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_104223

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*j
_output_shapesX
V:8???????????????????????????????????? : : : : :*
data_formatNDHWC*
epsilon%o?:*
is_training( ?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*N
_output_shapes<
::8???????????????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?H
?
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_100706

inputs

states
states_18
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@G
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ `
mulMulinputsones_like:output:0*
T0*/
_output_shapes
:?????????@@b
mul_1Mulinputsones_like:output:0*
T0*/
_output_shapes
:?????????@@b
mul_2Mulinputsones_like:output:0*
T0*/
_output_shapes
:?????????@@b
mul_3Mulinputsones_like:output:0*
T0*/
_output_shapes
:?????????@@d
mul_4Mulstatesones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ d
mul_5Mulstatesones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ d
mul_6Mulstatesones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ d
mul_7Mulstatesones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype0?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
convolutionConv2Dmul:z:0split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
t
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
convolution_1Conv2D	mul_1:z:0split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
convolution_2Conv2D	mul_2:z:0split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
convolution_3Conv2D	mul_3:z:0split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
convolution_4Conv2D	mul_4:z:0split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_5Conv2D	mul_5:z:0split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_6Conv2D	mul_6:z:0split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_7Conv2D	mul_7:z:0split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?_
Mul_8Muladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????@@ \
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ t
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ f
mul_10Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????@@ t
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ Q
TanhTanh	add_4:z:0*
T0*/
_output_shapes
:?????????@@ d
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*/
_output_shapes
:?????????@@ `
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*/
_output_shapes
:?????????@@ t
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????@@ f
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ S
Tanh_1Tanh	add_5:z:0*
T0*/
_output_shapes
:?????????@@ h
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ a
IdentityIdentity
mul_13:z:0^NoOp*
T0*/
_output_shapes
:?????????@@ c

Identity_1Identity
mul_13:z:0^NoOp*
T0*/
_output_shapes
:?????????@@ b

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:?????????@@ ?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????@@:?????????@@ :?????????@@ : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????@@ 
 
_user_specified_namestates:WS
/
_output_shapes
:?????????@@ 
 
_user_specified_namestates
?H
?
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_104420

inputs
states_0
states_18
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@I
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ `
mulMulinputsones_like:output:0*
T0*/
_output_shapes
:?????????@@b
mul_1Mulinputsones_like:output:0*
T0*/
_output_shapes
:?????????@@b
mul_2Mulinputsones_like:output:0*
T0*/
_output_shapes
:?????????@@b
mul_3Mulinputsones_like:output:0*
T0*/
_output_shapes
:?????????@@f
mul_4Mulstates_0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ f
mul_5Mulstates_0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ f
mul_6Mulstates_0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ f
mul_7Mulstates_0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype0?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
convolutionConv2Dmul:z:0split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
t
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
convolution_1Conv2D	mul_1:z:0split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
convolution_2Conv2D	mul_2:z:0split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
convolution_3Conv2D	mul_3:z:0split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
convolution_4Conv2D	mul_4:z:0split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_5Conv2D	mul_5:z:0split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_6Conv2D	mul_6:z:0split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_7Conv2D	mul_7:z:0split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?_
Mul_8Muladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????@@ \
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ t
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ f
mul_10Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????@@ t
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ Q
TanhTanh	add_4:z:0*
T0*/
_output_shapes
:?????????@@ d
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*/
_output_shapes
:?????????@@ `
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*/
_output_shapes
:?????????@@ t
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????@@ f
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ S
Tanh_1Tanh	add_5:z:0*
T0*/
_output_shapes
:?????????@@ h
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ a
IdentityIdentity
mul_13:z:0^NoOp*
T0*/
_output_shapes
:?????????@@ c

Identity_1Identity
mul_13:z:0^NoOp*
T0*/
_output_shapes
:?????????@@ b

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:?????????@@ ?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????@@:?????????@@ :?????????@@ : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????@@ 
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????@@ 
"
_user_specified_name
states/1
?!
?
while_body_100720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_100744_0:?)
while_100746_0: ?
while_100748_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_100744:?'
while_100746: ?
while_100748:	???while/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????@@*
element_dtype0?
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_100744_0while_100746_0while_100748_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????@@ :?????????@@ :?????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_100706?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/NoOp*
T0*/
_output_shapes
:?????????@@ ?
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/NoOp*
T0*/
_output_shapes
:?????????@@ l

while/NoOpNoOp^while/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
while_100744while_100744_0"
while_100746while_100746_0"
while_100748while_100748_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_conv3d_5_layer_call_fn_104286

inputs%
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_101468?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:&??????????????????@@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????@@ 
 
_user_specified_nameinputs
??
?
while_body_103321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????@@*
element_dtype0u
while/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:Z
while/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/ones_likeFillwhile/ones_like/Shape:output:0while/ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@X
while/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout/MulMulwhile/ones_like:output:0while/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@[
while/dropout/ShapeShapewhile/ones_like:output:0*
T0*
_output_shapes
:?
*while/dropout/random_uniform/RandomUniformRandomUniformwhile/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2?ȳa
while/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout/GreaterEqualGreaterEqual3while/dropout/random_uniform/RandomUniform:output:0%while/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
while/dropout/CastCastwhile/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
while/dropout/Mul_1Mulwhile/dropout/Mul:z:0while/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@Z
while/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_1/MulMulwhile/ones_like:output:0while/dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????@@]
while/dropout_1/ShapeShapewhile/ones_like:output:0*
T0*
_output_shapes
:?
,while/dropout_1/random_uniform/RandomUniformRandomUniformwhile/dropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???c
while/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_1/GreaterEqualGreaterEqual5while/dropout_1/random_uniform/RandomUniform:output:0'while/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
while/dropout_1/CastCast while/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
while/dropout_1/Mul_1Mulwhile/dropout_1/Mul:z:0while/dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????@@Z
while/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_2/MulMulwhile/ones_like:output:0while/dropout_2/Const:output:0*
T0*/
_output_shapes
:?????????@@]
while/dropout_2/ShapeShapewhile/ones_like:output:0*
T0*
_output_shapes
:?
,while/dropout_2/random_uniform/RandomUniformRandomUniformwhile/dropout_2/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2í?c
while/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_2/GreaterEqualGreaterEqual5while/dropout_2/random_uniform/RandomUniform:output:0'while/dropout_2/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
while/dropout_2/CastCast while/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
while/dropout_2/Mul_1Mulwhile/dropout_2/Mul:z:0while/dropout_2/Cast:y:0*
T0*/
_output_shapes
:?????????@@Z
while/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_3/MulMulwhile/ones_like:output:0while/dropout_3/Const:output:0*
T0*/
_output_shapes
:?????????@@]
while/dropout_3/ShapeShapewhile/ones_like:output:0*
T0*
_output_shapes
:?
,while/dropout_3/random_uniform/RandomUniformRandomUniformwhile/dropout_3/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???c
while/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_3/GreaterEqualGreaterEqual5while/dropout_3/random_uniform/RandomUniform:output:0'while/dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
while/dropout_3/CastCast while/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
while/dropout_3/Mul_1Mulwhile/dropout_3/Mul:z:0while/dropout_3/Cast:y:0*
T0*/
_output_shapes
:?????????@@Z
while/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:\
while/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/ones_like_1Fill while/ones_like_1/Shape:output:0 while/ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ Z
while/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_4/MulMulwhile/ones_like_1:output:0while/dropout_4/Const:output:0*
T0*/
_output_shapes
:?????????@@ _
while/dropout_4/ShapeShapewhile/ones_like_1:output:0*
T0*
_output_shapes
:?
,while/dropout_4/random_uniform/RandomUniformRandomUniformwhile/dropout_4/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2خ?c
while/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_4/GreaterEqualGreaterEqual5while/dropout_4/random_uniform/RandomUniform:output:0'while/dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/dropout_4/CastCast while/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
while/dropout_4/Mul_1Mulwhile/dropout_4/Mul:z:0while/dropout_4/Cast:y:0*
T0*/
_output_shapes
:?????????@@ Z
while/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_5/MulMulwhile/ones_like_1:output:0while/dropout_5/Const:output:0*
T0*/
_output_shapes
:?????????@@ _
while/dropout_5/ShapeShapewhile/ones_like_1:output:0*
T0*
_output_shapes
:?
,while/dropout_5/random_uniform/RandomUniformRandomUniformwhile/dropout_5/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2ɷac
while/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_5/GreaterEqualGreaterEqual5while/dropout_5/random_uniform/RandomUniform:output:0'while/dropout_5/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/dropout_5/CastCast while/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
while/dropout_5/Mul_1Mulwhile/dropout_5/Mul:z:0while/dropout_5/Cast:y:0*
T0*/
_output_shapes
:?????????@@ Z
while/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_6/MulMulwhile/ones_like_1:output:0while/dropout_6/Const:output:0*
T0*/
_output_shapes
:?????????@@ _
while/dropout_6/ShapeShapewhile/ones_like_1:output:0*
T0*
_output_shapes
:?
,while/dropout_6/random_uniform/RandomUniformRandomUniformwhile/dropout_6/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???c
while/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_6/GreaterEqualGreaterEqual5while/dropout_6/random_uniform/RandomUniform:output:0'while/dropout_6/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/dropout_6/CastCast while/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
while/dropout_6/Mul_1Mulwhile/dropout_6/Mul:z:0while/dropout_6/Cast:y:0*
T0*/
_output_shapes
:?????????@@ Z
while/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_7/MulMulwhile/ones_like_1:output:0while/dropout_7/Const:output:0*
T0*/
_output_shapes
:?????????@@ _
while/dropout_7/ShapeShapewhile/ones_like_1:output:0*
T0*
_output_shapes
:?
,while/dropout_7/random_uniform/RandomUniformRandomUniformwhile/dropout_7/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???c
while/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_7/GreaterEqualGreaterEqual5while/dropout_7/random_uniform/RandomUniform:output:0'while/dropout_7/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/dropout_7/CastCast while/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
while/dropout_7/Mul_1Mulwhile/dropout_7/Mul:z:0while/dropout_7/Cast:y:0*
T0*/
_output_shapes
:?????????@@ ?
	while/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
while/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/dropout_1/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
while/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/dropout_2/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
while/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/dropout_3/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@|
while/mul_4Mulwhile_placeholder_2while/dropout_4/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ |
while/mul_5Mulwhile_placeholder_2while/dropout_5/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ |
while/mul_6Mulwhile_placeholder_2while/dropout_6/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ |
while/mul_7Mulwhile_placeholder_2while/dropout_7/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype0?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype0?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
while/convolutionConv2Dwhile/mul:z:0while/split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_1Conv2Dwhile/mul_1:z:0while/split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_2Conv2Dwhile/mul_2:z:0while/split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_3Conv2Dwhile/mul_3:z:0while/split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_4Conv2Dwhile/mul_4:z:0while/split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_5Conv2Dwhile/mul_5:z:0while/split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_6Conv2Dwhile/mul_6:z:0while/split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_7Conv2Dwhile/mul_7:z:0while/split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?q
while/Mul_8Mulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????@@ w
while/Add_1AddV2while/Mul_8:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????@@ b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_9Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????@@ w
while/Add_3AddV2while/Mul_9:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????@@ d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ \
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_10Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????@@ ?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ ]

while/TanhTanhwhile/add_4:z:0*
T0*/
_output_shapes
:?????????@@ v
while/mul_11Mulwhile/clip_by_value:z:0while/Tanh:y:0*
T0*/
_output_shapes
:?????????@@ r
while/add_5AddV2while/mul_10:z:0while/mul_11:z:0*
T0*/
_output_shapes
:?????????@@ ?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_12Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????@@ x
while/Add_7AddV2while/Mul_12:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????@@ d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ \
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ _
while/Tanh_1Tanhwhile/add_5:z:0*
T0*/
_output_shapes
:?????????@@ z
while/mul_13Mulwhile/clip_by_value_2:z:0while/Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ ?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_13:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: u
while/Identity_4Identitywhile/mul_13:z:0^while/NoOp*
T0*/
_output_shapes
:?????????@@ t
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????@@ ?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
: 
?
?
C__inference_model_5_layer_call_and_return_conditional_losses_101477

inputs0
conv_lstm2d_36_101423:?0
conv_lstm2d_36_101425: ?$
conv_lstm2d_36_101427:	?+
batch_normalization_36_101448: +
batch_normalization_36_101450: +
batch_normalization_36_101452: +
batch_normalization_36_101454: -
conv3d_5_101469: 
conv3d_5_101471:
identity??.batch_normalization_36/StatefulPartitionedCall? conv3d_5/StatefulPartitionedCall?&conv_lstm2d_36/StatefulPartitionedCall?
&conv_lstm2d_36/StatefulPartitionedCallStatefulPartitionedCallinputsconv_lstm2d_36_101423conv_lstm2d_36_101425conv_lstm2d_36_101427*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_101422?
.batch_normalization_36/StatefulPartitionedCallStatefulPartitionedCall/conv_lstm2d_36/StatefulPartitionedCall:output:0batch_normalization_36_101448batch_normalization_36_101450batch_normalization_36_101452batch_normalization_36_101454*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_101447?
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_36/StatefulPartitionedCall:output:0conv3d_5_101469conv3d_5_101471*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_101468]
tf.math.multiply_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?D?
tf.math.multiply_5/MulMul)conv3d_5/StatefulPartitionedCall:output:0!tf.math.multiply_5/Mul/y:output:0*
T0*<
_output_shapes*
(:&??????????????????@@~
IdentityIdentitytf.math.multiply_5/Mul:z:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@?
NoOpNoOp/^batch_normalization_36/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall'^conv_lstm2d_36/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::&??????????????????@@: : : : : : : : : 2`
.batch_normalization_36/StatefulPartitionedCall.batch_normalization_36/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2P
&conv_lstm2d_36/StatefulPartitionedCall&conv_lstm2d_36/StatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
?

?
(__inference_model_5_layer_call_fn_102179

inputs"
unknown:?$
	unknown_0: ?
	unknown_1:	?
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: '
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@*)
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_5_layer_call_and_return_conditional_losses_102004?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::&??????????????????@@: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
?
?
D__inference_conv3d_5_layer_call_and_return_conditional_losses_104297

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????@@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????@@k
SigmoidSigmoidBiasAdd:output:0*
T0*<
_output_shapes*
(:&??????????????????@@o
IdentityIdentitySigmoid:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:&??????????????????@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????@@ 
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_36_layer_call_fn_104166

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8???????????????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_101124?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*N
_output_shapes<
::8???????????????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?

?
(__inference_model_5_layer_call_fn_101498
input_6"
unknown:?$
	unknown_0: ?
	unknown_1:	?
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: '
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_5_layer_call_and_return_conditional_losses_101477?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::&??????????????????@@: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
<
_output_shapes*
(:&??????????????????@@
!
_user_specified_name	input_6
??
?	
!__inference__wrapped_model_100588
input_6O
4model_5_conv_lstm2d_36_split_readvariableop_resource:?Q
6model_5_conv_lstm2d_36_split_1_readvariableop_resource: ?E
6model_5_conv_lstm2d_36_split_2_readvariableop_resource:	?D
6model_5_batch_normalization_36_readvariableop_resource: F
8model_5_batch_normalization_36_readvariableop_1_resource: U
Gmodel_5_batch_normalization_36_fusedbatchnormv3_readvariableop_resource: W
Imodel_5_batch_normalization_36_fusedbatchnormv3_readvariableop_1_resource: M
/model_5_conv3d_5_conv3d_readvariableop_resource: >
0model_5_conv3d_5_biasadd_readvariableop_resource:
identity??>model_5/batch_normalization_36/FusedBatchNormV3/ReadVariableOp?@model_5/batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1?-model_5/batch_normalization_36/ReadVariableOp?/model_5/batch_normalization_36/ReadVariableOp_1?'model_5/conv3d_5/BiasAdd/ReadVariableOp?&model_5/conv3d_5/Conv3D/ReadVariableOp?+model_5/conv_lstm2d_36/split/ReadVariableOp?-model_5/conv_lstm2d_36/split_1/ReadVariableOp?-model_5/conv_lstm2d_36/split_2/ReadVariableOp?model_5/conv_lstm2d_36/while~
!model_5/conv_lstm2d_36/zeros_like	ZerosLikeinput_6*
T0*<
_output_shapes*
(:&??????????????????@@n
,model_5/conv_lstm2d_36/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
model_5/conv_lstm2d_36/SumSum%model_5/conv_lstm2d_36/zeros_like:y:05model_5/conv_lstm2d_36/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@@?
model_5/conv_lstm2d_36/zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    ?
"model_5/conv_lstm2d_36/convolutionConv2D#model_5/conv_lstm2d_36/Sum:output:0%model_5/conv_lstm2d_36/zeros:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
%model_5/conv_lstm2d_36/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
 model_5/conv_lstm2d_36/transpose	Transposeinput_6.model_5/conv_lstm2d_36/transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@p
model_5/conv_lstm2d_36/ShapeShape$model_5/conv_lstm2d_36/transpose:y:0*
T0*
_output_shapes
:t
*model_5/conv_lstm2d_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,model_5/conv_lstm2d_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,model_5/conv_lstm2d_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$model_5/conv_lstm2d_36/strided_sliceStridedSlice%model_5/conv_lstm2d_36/Shape:output:03model_5/conv_lstm2d_36/strided_slice/stack:output:05model_5/conv_lstm2d_36/strided_slice/stack_1:output:05model_5/conv_lstm2d_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2model_5/conv_lstm2d_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$model_5/conv_lstm2d_36/TensorArrayV2TensorListReserve;model_5/conv_lstm2d_36/TensorArrayV2/element_shape:output:0-model_5/conv_lstm2d_36/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???o
%model_5/conv_lstm2d_36/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ?
 model_5/conv_lstm2d_36/ReverseV2	ReverseV2$model_5/conv_lstm2d_36/transpose:y:0.model_5/conv_lstm2d_36/ReverseV2/axis:output:0*
T0*<
_output_shapes*
(:&??????????????????@@?
Lmodel_5/conv_lstm2d_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
>model_5/conv_lstm2d_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)model_5/conv_lstm2d_36/ReverseV2:output:0Umodel_5/conv_lstm2d_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,model_5/conv_lstm2d_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.model_5/conv_lstm2d_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.model_5/conv_lstm2d_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&model_5/conv_lstm2d_36/strided_slice_1StridedSlice$model_5/conv_lstm2d_36/transpose:y:05model_5/conv_lstm2d_36/strided_slice_1/stack:output:07model_5/conv_lstm2d_36/strided_slice_1/stack_1:output:07model_5/conv_lstm2d_36/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@*
shrink_axis_mask?
&model_5/conv_lstm2d_36/ones_like/ShapeShape/model_5/conv_lstm2d_36/strided_slice_1:output:0*
T0*
_output_shapes
:k
&model_5/conv_lstm2d_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
 model_5/conv_lstm2d_36/ones_likeFill/model_5/conv_lstm2d_36/ones_like/Shape:output:0/model_5/conv_lstm2d_36/ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@?
(model_5/conv_lstm2d_36/ones_like_1/ShapeShape+model_5/conv_lstm2d_36/convolution:output:0*
T0*
_output_shapes
:m
(model_5/conv_lstm2d_36/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
"model_5/conv_lstm2d_36/ones_like_1Fill1model_5/conv_lstm2d_36/ones_like_1/Shape:output:01model_5/conv_lstm2d_36/ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/mulMul/model_5/conv_lstm2d_36/strided_slice_1:output:0)model_5/conv_lstm2d_36/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
model_5/conv_lstm2d_36/mul_1Mul/model_5/conv_lstm2d_36/strided_slice_1:output:0)model_5/conv_lstm2d_36/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
model_5/conv_lstm2d_36/mul_2Mul/model_5/conv_lstm2d_36/strided_slice_1:output:0)model_5/conv_lstm2d_36/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
model_5/conv_lstm2d_36/mul_3Mul/model_5/conv_lstm2d_36/strided_slice_1:output:0)model_5/conv_lstm2d_36/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
model_5/conv_lstm2d_36/mul_4Mul+model_5/conv_lstm2d_36/convolution:output:0+model_5/conv_lstm2d_36/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/mul_5Mul+model_5/conv_lstm2d_36/convolution:output:0+model_5/conv_lstm2d_36/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/mul_6Mul+model_5/conv_lstm2d_36/convolution:output:0+model_5/conv_lstm2d_36/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/mul_7Mul+model_5/conv_lstm2d_36/convolution:output:0+model_5/conv_lstm2d_36/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ h
&model_5/conv_lstm2d_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+model_5/conv_lstm2d_36/split/ReadVariableOpReadVariableOp4model_5_conv_lstm2d_36_split_readvariableop_resource*'
_output_shapes
:?*
dtype0?
model_5/conv_lstm2d_36/splitSplit/model_5/conv_lstm2d_36/split/split_dim:output:03model_5/conv_lstm2d_36/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitj
(model_5/conv_lstm2d_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
-model_5/conv_lstm2d_36/split_1/ReadVariableOpReadVariableOp6model_5_conv_lstm2d_36_split_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
model_5/conv_lstm2d_36/split_1Split1model_5/conv_lstm2d_36/split_1/split_dim:output:05model_5/conv_lstm2d_36/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitj
(model_5/conv_lstm2d_36/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
-model_5/conv_lstm2d_36/split_2/ReadVariableOpReadVariableOp6model_5_conv_lstm2d_36_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_5/conv_lstm2d_36/split_2Split1model_5/conv_lstm2d_36/split_2/split_dim:output:05model_5/conv_lstm2d_36/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
$model_5/conv_lstm2d_36/convolution_1Conv2Dmodel_5/conv_lstm2d_36/mul:z:0%model_5/conv_lstm2d_36/split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
model_5/conv_lstm2d_36/BiasAddBiasAdd-model_5/conv_lstm2d_36/convolution_1:output:0'model_5/conv_lstm2d_36/split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
$model_5/conv_lstm2d_36/convolution_2Conv2D model_5/conv_lstm2d_36/mul_1:z:0%model_5/conv_lstm2d_36/split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
 model_5/conv_lstm2d_36/BiasAdd_1BiasAdd-model_5/conv_lstm2d_36/convolution_2:output:0'model_5/conv_lstm2d_36/split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
$model_5/conv_lstm2d_36/convolution_3Conv2D model_5/conv_lstm2d_36/mul_2:z:0%model_5/conv_lstm2d_36/split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
 model_5/conv_lstm2d_36/BiasAdd_2BiasAdd-model_5/conv_lstm2d_36/convolution_3:output:0'model_5/conv_lstm2d_36/split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
$model_5/conv_lstm2d_36/convolution_4Conv2D model_5/conv_lstm2d_36/mul_3:z:0%model_5/conv_lstm2d_36/split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
 model_5/conv_lstm2d_36/BiasAdd_3BiasAdd-model_5/conv_lstm2d_36/convolution_4:output:0'model_5/conv_lstm2d_36/split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
$model_5/conv_lstm2d_36/convolution_5Conv2D model_5/conv_lstm2d_36/mul_4:z:0'model_5/conv_lstm2d_36/split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
$model_5/conv_lstm2d_36/convolution_6Conv2D model_5/conv_lstm2d_36/mul_5:z:0'model_5/conv_lstm2d_36/split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
$model_5/conv_lstm2d_36/convolution_7Conv2D model_5/conv_lstm2d_36/mul_6:z:0'model_5/conv_lstm2d_36/split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
$model_5/conv_lstm2d_36/convolution_8Conv2D model_5/conv_lstm2d_36/mul_7:z:0'model_5/conv_lstm2d_36/split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
model_5/conv_lstm2d_36/addAddV2'model_5/conv_lstm2d_36/BiasAdd:output:0-model_5/conv_lstm2d_36/convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ a
model_5/conv_lstm2d_36/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>c
model_5/conv_lstm2d_36/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
model_5/conv_lstm2d_36/Mul_8Mulmodel_5/conv_lstm2d_36/add:z:0%model_5/conv_lstm2d_36/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/Add_1AddV2 model_5/conv_lstm2d_36/Mul_8:z:0'model_5/conv_lstm2d_36/Const_1:output:0*
T0*/
_output_shapes
:?????????@@ s
.model_5/conv_lstm2d_36/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
,model_5/conv_lstm2d_36/clip_by_value/MinimumMinimum model_5/conv_lstm2d_36/Add_1:z:07model_5/conv_lstm2d_36/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ k
&model_5/conv_lstm2d_36/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
$model_5/conv_lstm2d_36/clip_by_valueMaximum0model_5/conv_lstm2d_36/clip_by_value/Minimum:z:0/model_5/conv_lstm2d_36/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/add_2AddV2)model_5/conv_lstm2d_36/BiasAdd_1:output:0-model_5/conv_lstm2d_36/convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ c
model_5/conv_lstm2d_36/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>c
model_5/conv_lstm2d_36/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
model_5/conv_lstm2d_36/Mul_9Mul model_5/conv_lstm2d_36/add_2:z:0'model_5/conv_lstm2d_36/Const_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/Add_3AddV2 model_5/conv_lstm2d_36/Mul_9:z:0'model_5/conv_lstm2d_36/Const_3:output:0*
T0*/
_output_shapes
:?????????@@ u
0model_5/conv_lstm2d_36/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
.model_5/conv_lstm2d_36/clip_by_value_1/MinimumMinimum model_5/conv_lstm2d_36/Add_3:z:09model_5/conv_lstm2d_36/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ m
(model_5/conv_lstm2d_36/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
&model_5/conv_lstm2d_36/clip_by_value_1Maximum2model_5/conv_lstm2d_36/clip_by_value_1/Minimum:z:01model_5/conv_lstm2d_36/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/mul_10Mul*model_5/conv_lstm2d_36/clip_by_value_1:z:0+model_5/conv_lstm2d_36/convolution:output:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/add_4AddV2)model_5/conv_lstm2d_36/BiasAdd_2:output:0-model_5/conv_lstm2d_36/convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ 
model_5/conv_lstm2d_36/TanhTanh model_5/conv_lstm2d_36/add_4:z:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/mul_11Mul(model_5/conv_lstm2d_36/clip_by_value:z:0model_5/conv_lstm2d_36/Tanh:y:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/add_5AddV2!model_5/conv_lstm2d_36/mul_10:z:0!model_5/conv_lstm2d_36/mul_11:z:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/add_6AddV2)model_5/conv_lstm2d_36/BiasAdd_3:output:0-model_5/conv_lstm2d_36/convolution_8:output:0*
T0*/
_output_shapes
:?????????@@ c
model_5/conv_lstm2d_36/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>c
model_5/conv_lstm2d_36/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
model_5/conv_lstm2d_36/Mul_12Mul model_5/conv_lstm2d_36/add_6:z:0'model_5/conv_lstm2d_36/Const_4:output:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/Add_7AddV2!model_5/conv_lstm2d_36/Mul_12:z:0'model_5/conv_lstm2d_36/Const_5:output:0*
T0*/
_output_shapes
:?????????@@ u
0model_5/conv_lstm2d_36/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
.model_5/conv_lstm2d_36/clip_by_value_2/MinimumMinimum model_5/conv_lstm2d_36/Add_7:z:09model_5/conv_lstm2d_36/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ m
(model_5/conv_lstm2d_36/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
&model_5/conv_lstm2d_36/clip_by_value_2Maximum2model_5/conv_lstm2d_36/clip_by_value_2/Minimum:z:01model_5/conv_lstm2d_36/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/Tanh_1Tanh model_5/conv_lstm2d_36/add_5:z:0*
T0*/
_output_shapes
:?????????@@ ?
model_5/conv_lstm2d_36/mul_13Mul*model_5/conv_lstm2d_36/clip_by_value_2:z:0!model_5/conv_lstm2d_36/Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ ?
4model_5/conv_lstm2d_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
&model_5/conv_lstm2d_36/TensorArrayV2_1TensorListReserve=model_5/conv_lstm2d_36/TensorArrayV2_1/element_shape:output:0-model_5/conv_lstm2d_36/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
model_5/conv_lstm2d_36/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/model_5/conv_lstm2d_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)model_5/conv_lstm2d_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
model_5/conv_lstm2d_36/whileWhile2model_5/conv_lstm2d_36/while/loop_counter:output:08model_5/conv_lstm2d_36/while/maximum_iterations:output:0$model_5/conv_lstm2d_36/time:output:0/model_5/conv_lstm2d_36/TensorArrayV2_1:handle:0+model_5/conv_lstm2d_36/convolution:output:0+model_5/conv_lstm2d_36/convolution:output:0-model_5/conv_lstm2d_36/strided_slice:output:0Nmodel_5/conv_lstm2d_36/TensorArrayUnstack/TensorListFromTensor:output_handle:04model_5_conv_lstm2d_36_split_readvariableop_resource6model_5_conv_lstm2d_36_split_1_readvariableop_resource6model_5_conv_lstm2d_36_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(model_5_conv_lstm2d_36_while_body_100425*4
cond,R*
(model_5_conv_lstm2d_36_while_cond_100424*[
output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *
parallel_iterations ?
Gmodel_5/conv_lstm2d_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
9model_5/conv_lstm2d_36/TensorArrayV2Stack/TensorListStackTensorListStack%model_5/conv_lstm2d_36/while:output:3Pmodel_5/conv_lstm2d_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????@@ *
element_dtype0
,model_5/conv_lstm2d_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.model_5/conv_lstm2d_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.model_5/conv_lstm2d_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&model_5/conv_lstm2d_36/strided_slice_2StridedSliceBmodel_5/conv_lstm2d_36/TensorArrayV2Stack/TensorListStack:tensor:05model_5/conv_lstm2d_36/strided_slice_2/stack:output:07model_5/conv_lstm2d_36/strided_slice_2/stack_1:output:07model_5/conv_lstm2d_36/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@ *
shrink_axis_mask?
'model_5/conv_lstm2d_36/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
"model_5/conv_lstm2d_36/transpose_1	TransposeBmodel_5/conv_lstm2d_36/TensorArrayV2Stack/TensorListStack:tensor:00model_5/conv_lstm2d_36/transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@ ?
-model_5/batch_normalization_36/ReadVariableOpReadVariableOp6model_5_batch_normalization_36_readvariableop_resource*
_output_shapes
: *
dtype0?
/model_5/batch_normalization_36/ReadVariableOp_1ReadVariableOp8model_5_batch_normalization_36_readvariableop_1_resource*
_output_shapes
: *
dtype0?
>model_5/batch_normalization_36/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_5_batch_normalization_36_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
@model_5/batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_5_batch_normalization_36_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
/model_5/batch_normalization_36/FusedBatchNormV3FusedBatchNormV3&model_5/conv_lstm2d_36/transpose_1:y:05model_5/batch_normalization_36/ReadVariableOp:value:07model_5/batch_normalization_36/ReadVariableOp_1:value:0Fmodel_5/batch_normalization_36/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_5/batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*X
_output_shapesF
D:&??????????????????@@ : : : : :*
data_formatNDHWC*
epsilon%o?:*
is_training( ?
&model_5/conv3d_5/Conv3D/ReadVariableOpReadVariableOp/model_5_conv3d_5_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0?
model_5/conv3d_5/Conv3DConv3D3model_5/batch_normalization_36/FusedBatchNormV3:y:0.model_5/conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????@@*
paddingSAME*
strides	
?
'model_5/conv3d_5/BiasAdd/ReadVariableOpReadVariableOp0model_5_conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_5/conv3d_5/BiasAddBiasAdd model_5/conv3d_5/Conv3D:output:0/model_5/conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????@@?
model_5/conv3d_5/SigmoidSigmoid!model_5/conv3d_5/BiasAdd:output:0*
T0*<
_output_shapes*
(:&??????????????????@@e
 model_5/tf.math.multiply_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?D?
model_5/tf.math.multiply_5/MulMulmodel_5/conv3d_5/Sigmoid:y:0)model_5/tf.math.multiply_5/Mul/y:output:0*
T0*<
_output_shapes*
(:&??????????????????@@?
IdentityIdentity"model_5/tf.math.multiply_5/Mul:z:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@?
NoOpNoOp?^model_5/batch_normalization_36/FusedBatchNormV3/ReadVariableOpA^model_5/batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1.^model_5/batch_normalization_36/ReadVariableOp0^model_5/batch_normalization_36/ReadVariableOp_1(^model_5/conv3d_5/BiasAdd/ReadVariableOp'^model_5/conv3d_5/Conv3D/ReadVariableOp,^model_5/conv_lstm2d_36/split/ReadVariableOp.^model_5/conv_lstm2d_36/split_1/ReadVariableOp.^model_5/conv_lstm2d_36/split_2/ReadVariableOp^model_5/conv_lstm2d_36/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::&??????????????????@@: : : : : : : : : 2?
>model_5/batch_normalization_36/FusedBatchNormV3/ReadVariableOp>model_5/batch_normalization_36/FusedBatchNormV3/ReadVariableOp2?
@model_5/batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1@model_5/batch_normalization_36/FusedBatchNormV3/ReadVariableOp_12^
-model_5/batch_normalization_36/ReadVariableOp-model_5/batch_normalization_36/ReadVariableOp2b
/model_5/batch_normalization_36/ReadVariableOp_1/model_5/batch_normalization_36/ReadVariableOp_12R
'model_5/conv3d_5/BiasAdd/ReadVariableOp'model_5/conv3d_5/BiasAdd/ReadVariableOp2P
&model_5/conv3d_5/Conv3D/ReadVariableOp&model_5/conv3d_5/Conv3D/ReadVariableOp2Z
+model_5/conv_lstm2d_36/split/ReadVariableOp+model_5/conv_lstm2d_36/split/ReadVariableOp2^
-model_5/conv_lstm2d_36/split_1/ReadVariableOp-model_5/conv_lstm2d_36/split_1/ReadVariableOp2^
-model_5/conv_lstm2d_36/split_2/ReadVariableOp-model_5/conv_lstm2d_36/split_2/ReadVariableOp2<
model_5/conv_lstm2d_36/whilemodel_5/conv_lstm2d_36/while:e a
<
_output_shapes*
(:&??????????????????@@
!
_user_specified_name	input_6
?
?
(model_5_conv_lstm2d_36_while_cond_100424J
Fmodel_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_while_loop_counterP
Lmodel_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_while_maximum_iterations,
(model_5_conv_lstm2d_36_while_placeholder.
*model_5_conv_lstm2d_36_while_placeholder_1.
*model_5_conv_lstm2d_36_while_placeholder_2.
*model_5_conv_lstm2d_36_while_placeholder_3J
Fmodel_5_conv_lstm2d_36_while_less_model_5_conv_lstm2d_36_strided_sliceb
^model_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_while_cond_100424___redundant_placeholder0b
^model_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_while_cond_100424___redundant_placeholder1b
^model_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_while_cond_100424___redundant_placeholder2b
^model_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_while_cond_100424___redundant_placeholder3)
%model_5_conv_lstm2d_36_while_identity
?
!model_5/conv_lstm2d_36/while/LessLess(model_5_conv_lstm2d_36_while_placeholderFmodel_5_conv_lstm2d_36_while_less_model_5_conv_lstm2d_36_strided_slice*
T0*
_output_shapes
: y
%model_5/conv_lstm2d_36/while/IdentityIdentity%model_5/conv_lstm2d_36/while/Less:z:0*
T0
*
_output_shapes
: "W
%model_5_conv_lstm2d_36_while_identity.model_5/conv_lstm2d_36/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????@@ :?????????@@ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
:
?3
?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_100788

inputs"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?whilef

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????@@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@@j
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    ?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ~
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ?
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*<
_output_shapes*
(:&??????????????????@@?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@*
shrink_axis_mask?
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????@@ :?????????@@ :?????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_100706v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_100720*
condR
while_cond_100719*[
output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????@@ *
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@ *
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@ s
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ h
NoOpNoOp^StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????@@: : : 22
StatefulPartitionedCallStatefulPartitionedCall2
whilewhile:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
?
?
while_cond_103006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_103006___redundant_placeholder04
0while_while_cond_103006___redundant_placeholder14
0while_while_cond_103006___redundant_placeholder24
0while_while_cond_103006___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????@@ :?????????@@ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
:
??
?
while_body_103949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????@@*
element_dtype0u
while/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:Z
while/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/ones_likeFillwhile/ones_like/Shape:output:0while/ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@X
while/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout/MulMulwhile/ones_like:output:0while/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@[
while/dropout/ShapeShapewhile/ones_like:output:0*
T0*
_output_shapes
:?
*while/dropout/random_uniform/RandomUniformRandomUniformwhile/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2??ma
while/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout/GreaterEqualGreaterEqual3while/dropout/random_uniform/RandomUniform:output:0%while/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
while/dropout/CastCastwhile/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
while/dropout/Mul_1Mulwhile/dropout/Mul:z:0while/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@Z
while/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_1/MulMulwhile/ones_like:output:0while/dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????@@]
while/dropout_1/ShapeShapewhile/ones_like:output:0*
T0*
_output_shapes
:?
,while/dropout_1/random_uniform/RandomUniformRandomUniformwhile/dropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2??qc
while/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_1/GreaterEqualGreaterEqual5while/dropout_1/random_uniform/RandomUniform:output:0'while/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
while/dropout_1/CastCast while/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
while/dropout_1/Mul_1Mulwhile/dropout_1/Mul:z:0while/dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????@@Z
while/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_2/MulMulwhile/ones_like:output:0while/dropout_2/Const:output:0*
T0*/
_output_shapes
:?????????@@]
while/dropout_2/ShapeShapewhile/ones_like:output:0*
T0*
_output_shapes
:?
,while/dropout_2/random_uniform/RandomUniformRandomUniformwhile/dropout_2/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2??{c
while/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_2/GreaterEqualGreaterEqual5while/dropout_2/random_uniform/RandomUniform:output:0'while/dropout_2/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
while/dropout_2/CastCast while/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
while/dropout_2/Mul_1Mulwhile/dropout_2/Mul:z:0while/dropout_2/Cast:y:0*
T0*/
_output_shapes
:?????????@@Z
while/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_3/MulMulwhile/ones_like:output:0while/dropout_3/Const:output:0*
T0*/
_output_shapes
:?????????@@]
while/dropout_3/ShapeShapewhile/ones_like:output:0*
T0*
_output_shapes
:?
,while/dropout_3/random_uniform/RandomUniformRandomUniformwhile/dropout_3/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???c
while/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_3/GreaterEqualGreaterEqual5while/dropout_3/random_uniform/RandomUniform:output:0'while/dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
while/dropout_3/CastCast while/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
while/dropout_3/Mul_1Mulwhile/dropout_3/Mul:z:0while/dropout_3/Cast:y:0*
T0*/
_output_shapes
:?????????@@Z
while/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:\
while/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/ones_like_1Fill while/ones_like_1/Shape:output:0 while/ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ Z
while/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_4/MulMulwhile/ones_like_1:output:0while/dropout_4/Const:output:0*
T0*/
_output_shapes
:?????????@@ _
while/dropout_4/ShapeShapewhile/ones_like_1:output:0*
T0*
_output_shapes
:?
,while/dropout_4/random_uniform/RandomUniformRandomUniformwhile/dropout_4/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???c
while/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_4/GreaterEqualGreaterEqual5while/dropout_4/random_uniform/RandomUniform:output:0'while/dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/dropout_4/CastCast while/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
while/dropout_4/Mul_1Mulwhile/dropout_4/Mul:z:0while/dropout_4/Cast:y:0*
T0*/
_output_shapes
:?????????@@ Z
while/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_5/MulMulwhile/ones_like_1:output:0while/dropout_5/Const:output:0*
T0*/
_output_shapes
:?????????@@ _
while/dropout_5/ShapeShapewhile/ones_like_1:output:0*
T0*
_output_shapes
:?
,while/dropout_5/random_uniform/RandomUniformRandomUniformwhile/dropout_5/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2ޖEc
while/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_5/GreaterEqualGreaterEqual5while/dropout_5/random_uniform/RandomUniform:output:0'while/dropout_5/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/dropout_5/CastCast while/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
while/dropout_5/Mul_1Mulwhile/dropout_5/Mul:z:0while/dropout_5/Cast:y:0*
T0*/
_output_shapes
:?????????@@ Z
while/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_6/MulMulwhile/ones_like_1:output:0while/dropout_6/Const:output:0*
T0*/
_output_shapes
:?????????@@ _
while/dropout_6/ShapeShapewhile/ones_like_1:output:0*
T0*
_output_shapes
:?
,while/dropout_6/random_uniform/RandomUniformRandomUniformwhile/dropout_6/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2˸?c
while/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_6/GreaterEqualGreaterEqual5while/dropout_6/random_uniform/RandomUniform:output:0'while/dropout_6/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/dropout_6/CastCast while/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
while/dropout_6/Mul_1Mulwhile/dropout_6/Mul:z:0while/dropout_6/Cast:y:0*
T0*/
_output_shapes
:?????????@@ Z
while/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_7/MulMulwhile/ones_like_1:output:0while/dropout_7/Const:output:0*
T0*/
_output_shapes
:?????????@@ _
while/dropout_7/ShapeShapewhile/ones_like_1:output:0*
T0*
_output_shapes
:?
,while/dropout_7/random_uniform/RandomUniformRandomUniformwhile/dropout_7/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???c
while/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_7/GreaterEqualGreaterEqual5while/dropout_7/random_uniform/RandomUniform:output:0'while/dropout_7/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/dropout_7/CastCast while/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
while/dropout_7/Mul_1Mulwhile/dropout_7/Mul:z:0while/dropout_7/Cast:y:0*
T0*/
_output_shapes
:?????????@@ ?
	while/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
while/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/dropout_1/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
while/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/dropout_2/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
while/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/dropout_3/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@|
while/mul_4Mulwhile_placeholder_2while/dropout_4/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ |
while/mul_5Mulwhile_placeholder_2while/dropout_5/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ |
while/mul_6Mulwhile_placeholder_2while/dropout_6/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ |
while/mul_7Mulwhile_placeholder_2while/dropout_7/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype0?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype0?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
while/convolutionConv2Dwhile/mul:z:0while/split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_1Conv2Dwhile/mul_1:z:0while/split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_2Conv2Dwhile/mul_2:z:0while/split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_3Conv2Dwhile/mul_3:z:0while/split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_4Conv2Dwhile/mul_4:z:0while/split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_5Conv2Dwhile/mul_5:z:0while/split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_6Conv2Dwhile/mul_6:z:0while/split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_7Conv2Dwhile/mul_7:z:0while/split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?q
while/Mul_8Mulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????@@ w
while/Add_1AddV2while/Mul_8:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????@@ b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_9Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????@@ w
while/Add_3AddV2while/Mul_9:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????@@ d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ \
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_10Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????@@ ?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ ]

while/TanhTanhwhile/add_4:z:0*
T0*/
_output_shapes
:?????????@@ v
while/mul_11Mulwhile/clip_by_value:z:0while/Tanh:y:0*
T0*/
_output_shapes
:?????????@@ r
while/add_5AddV2while/mul_10:z:0while/mul_11:z:0*
T0*/
_output_shapes
:?????????@@ ?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_12Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????@@ x
while/Add_7AddV2while/Mul_12:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????@@ d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ \
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ _
while/Tanh_1Tanhwhile/add_5:z:0*
T0*/
_output_shapes
:?????????@@ z
while/mul_13Mulwhile/clip_by_value_2:z:0while/Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ ?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_13:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: u
while/Identity_4Identitywhile/mul_13:z:0^while/NoOp*
T0*/
_output_shapes
:?????????@@ t
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????@@ ?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
: 
?g
?
while_body_103007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????@@*
element_dtype0u
while/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:Z
while/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/ones_likeFillwhile/ones_like/Shape:output:0while/ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@Z
while/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:\
while/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/ones_like_1Fill while/ones_like_1/Shape:output:0 while/ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
	while/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
while/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
while/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
while/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@}
while/mul_4Mulwhile_placeholder_2while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_5Mulwhile_placeholder_2while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_6Mulwhile_placeholder_2while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_7Mulwhile_placeholder_2while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype0?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype0?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
while/convolutionConv2Dwhile/mul:z:0while/split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_1Conv2Dwhile/mul_1:z:0while/split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_2Conv2Dwhile/mul_2:z:0while/split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_3Conv2Dwhile/mul_3:z:0while/split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_4Conv2Dwhile/mul_4:z:0while/split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_5Conv2Dwhile/mul_5:z:0while/split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_6Conv2Dwhile/mul_6:z:0while/split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_7Conv2Dwhile/mul_7:z:0while/split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?q
while/Mul_8Mulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????@@ w
while/Add_1AddV2while/Mul_8:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????@@ b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_9Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????@@ w
while/Add_3AddV2while/Mul_9:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????@@ d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ \
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_10Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????@@ ?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ ]

while/TanhTanhwhile/add_4:z:0*
T0*/
_output_shapes
:?????????@@ v
while/mul_11Mulwhile/clip_by_value:z:0while/Tanh:y:0*
T0*/
_output_shapes
:?????????@@ r
while/add_5AddV2while/mul_10:z:0while/mul_11:z:0*
T0*/
_output_shapes
:?????????@@ ?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_12Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????@@ x
while/Add_7AddV2while/Mul_12:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????@@ d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ \
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ _
while/Tanh_1Tanhwhile/add_5:z:0*
T0*/
_output_shapes
:?????????@@ z
while/mul_13Mulwhile/clip_by_value_2:z:0while/Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ ?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_13:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: u
while/Identity_4Identitywhile/mul_13:z:0^while/NoOp*
T0*/
_output_shapes
:?????????@@ t
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????@@ ?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
: 
Ю
?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_104153

inputs8
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilef

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????@@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@@j
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    ?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ~
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ?
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*<
_output_shapes*
(:&??????????????????@@?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@*
shrink_axis_maskW
ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?x
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2?ߌ]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2?ҥ]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*/
_output_shapes
:?????????@@U
ones_like_1/ShapeShapeconvolution:output:0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2݂]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2ګ?]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*/
_output_shapes
:?????????@@ q
mulMulstrided_slice_1:output:0dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@u
mul_1Mulstrided_slice_1:output:0dropout_1/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@u
mul_2Mulstrided_slice_1:output:0dropout_2/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@u
mul_3Mulstrided_slice_1:output:0dropout_3/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@q
mul_4Mulconvolution:output:0dropout_4/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ q
mul_5Mulconvolution:output:0dropout_5/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ q
mul_6Mulconvolution:output:0dropout_6/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ q
mul_7Mulconvolution:output:0dropout_7/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype0?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
convolution_1Conv2Dmul:z:0split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
v
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
convolution_2Conv2D	mul_1:z:0split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
convolution_3Conv2D	mul_2:z:0split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
convolution_4Conv2D	mul_3:z:0split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
convolution_5Conv2D	mul_4:z:0split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_6Conv2D	mul_5:z:0split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_7Conv2D	mul_6:z:0split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_8Conv2D	mul_7:z:0split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?_
Mul_8Muladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????@@ \
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ t
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_10Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????@@ t
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ Q
TanhTanh	add_4:z:0*
T0*/
_output_shapes
:?????????@@ d
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*/
_output_shapes
:?????????@@ `
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*/
_output_shapes
:?????????@@ t
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????@@ f
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ S
Tanh_1Tanh	add_5:z:0*
T0*/
_output_shapes
:?????????@@ h
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_103949*
condR
while_cond_103948*[
output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????@@ *
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@ *
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@ s
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ ?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????@@: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
??
?
while_body_101739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????@@*
element_dtype0u
while/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:Z
while/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/ones_likeFillwhile/ones_like/Shape:output:0while/ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@X
while/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout/MulMulwhile/ones_like:output:0while/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@[
while/dropout/ShapeShapewhile/ones_like:output:0*
T0*
_output_shapes
:?
*while/dropout/random_uniform/RandomUniformRandomUniformwhile/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2??]a
while/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout/GreaterEqualGreaterEqual3while/dropout/random_uniform/RandomUniform:output:0%while/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
while/dropout/CastCastwhile/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
while/dropout/Mul_1Mulwhile/dropout/Mul:z:0while/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@Z
while/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_1/MulMulwhile/ones_like:output:0while/dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????@@]
while/dropout_1/ShapeShapewhile/ones_like:output:0*
T0*
_output_shapes
:?
,while/dropout_1/random_uniform/RandomUniformRandomUniformwhile/dropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???c
while/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_1/GreaterEqualGreaterEqual5while/dropout_1/random_uniform/RandomUniform:output:0'while/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
while/dropout_1/CastCast while/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
while/dropout_1/Mul_1Mulwhile/dropout_1/Mul:z:0while/dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????@@Z
while/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_2/MulMulwhile/ones_like:output:0while/dropout_2/Const:output:0*
T0*/
_output_shapes
:?????????@@]
while/dropout_2/ShapeShapewhile/ones_like:output:0*
T0*
_output_shapes
:?
,while/dropout_2/random_uniform/RandomUniformRandomUniformwhile/dropout_2/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???c
while/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_2/GreaterEqualGreaterEqual5while/dropout_2/random_uniform/RandomUniform:output:0'while/dropout_2/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
while/dropout_2/CastCast while/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
while/dropout_2/Mul_1Mulwhile/dropout_2/Mul:z:0while/dropout_2/Cast:y:0*
T0*/
_output_shapes
:?????????@@Z
while/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_3/MulMulwhile/ones_like:output:0while/dropout_3/Const:output:0*
T0*/
_output_shapes
:?????????@@]
while/dropout_3/ShapeShapewhile/ones_like:output:0*
T0*
_output_shapes
:?
,while/dropout_3/random_uniform/RandomUniformRandomUniformwhile/dropout_3/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???c
while/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_3/GreaterEqualGreaterEqual5while/dropout_3/random_uniform/RandomUniform:output:0'while/dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
while/dropout_3/CastCast while/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
while/dropout_3/Mul_1Mulwhile/dropout_3/Mul:z:0while/dropout_3/Cast:y:0*
T0*/
_output_shapes
:?????????@@Z
while/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:\
while/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/ones_like_1Fill while/ones_like_1/Shape:output:0 while/ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ Z
while/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_4/MulMulwhile/ones_like_1:output:0while/dropout_4/Const:output:0*
T0*/
_output_shapes
:?????????@@ _
while/dropout_4/ShapeShapewhile/ones_like_1:output:0*
T0*
_output_shapes
:?
,while/dropout_4/random_uniform/RandomUniformRandomUniformwhile/dropout_4/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???c
while/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_4/GreaterEqualGreaterEqual5while/dropout_4/random_uniform/RandomUniform:output:0'while/dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/dropout_4/CastCast while/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
while/dropout_4/Mul_1Mulwhile/dropout_4/Mul:z:0while/dropout_4/Cast:y:0*
T0*/
_output_shapes
:?????????@@ Z
while/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_5/MulMulwhile/ones_like_1:output:0while/dropout_5/Const:output:0*
T0*/
_output_shapes
:?????????@@ _
while/dropout_5/ShapeShapewhile/ones_like_1:output:0*
T0*
_output_shapes
:?
,while/dropout_5/random_uniform/RandomUniformRandomUniformwhile/dropout_5/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2??c
while/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_5/GreaterEqualGreaterEqual5while/dropout_5/random_uniform/RandomUniform:output:0'while/dropout_5/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/dropout_5/CastCast while/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
while/dropout_5/Mul_1Mulwhile/dropout_5/Mul:z:0while/dropout_5/Cast:y:0*
T0*/
_output_shapes
:?????????@@ Z
while/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_6/MulMulwhile/ones_like_1:output:0while/dropout_6/Const:output:0*
T0*/
_output_shapes
:?????????@@ _
while/dropout_6/ShapeShapewhile/ones_like_1:output:0*
T0*
_output_shapes
:?
,while/dropout_6/random_uniform/RandomUniformRandomUniformwhile/dropout_6/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2?·c
while/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_6/GreaterEqualGreaterEqual5while/dropout_6/random_uniform/RandomUniform:output:0'while/dropout_6/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/dropout_6/CastCast while/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
while/dropout_6/Mul_1Mulwhile/dropout_6/Mul:z:0while/dropout_6/Cast:y:0*
T0*/
_output_shapes
:?????????@@ Z
while/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
while/dropout_7/MulMulwhile/ones_like_1:output:0while/dropout_7/Const:output:0*
T0*/
_output_shapes
:?????????@@ _
while/dropout_7/ShapeShapewhile/ones_like_1:output:0*
T0*
_output_shapes
:?
,while/dropout_7/random_uniform/RandomUniformRandomUniformwhile/dropout_7/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???c
while/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
while/dropout_7/GreaterEqualGreaterEqual5while/dropout_7/random_uniform/RandomUniform:output:0'while/dropout_7/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/dropout_7/CastCast while/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
while/dropout_7/Mul_1Mulwhile/dropout_7/Mul:z:0while/dropout_7/Cast:y:0*
T0*/
_output_shapes
:?????????@@ ?
	while/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
while/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/dropout_1/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
while/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/dropout_2/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
while/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/dropout_3/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@|
while/mul_4Mulwhile_placeholder_2while/dropout_4/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ |
while/mul_5Mulwhile_placeholder_2while/dropout_5/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ |
while/mul_6Mulwhile_placeholder_2while/dropout_6/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ |
while/mul_7Mulwhile_placeholder_2while/dropout_7/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype0?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype0?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
while/convolutionConv2Dwhile/mul:z:0while/split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_1Conv2Dwhile/mul_1:z:0while/split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_2Conv2Dwhile/mul_2:z:0while/split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_3Conv2Dwhile/mul_3:z:0while/split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
while/convolution_4Conv2Dwhile/mul_4:z:0while/split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_5Conv2Dwhile/mul_5:z:0while/split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_6Conv2Dwhile/mul_6:z:0while/split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
while/convolution_7Conv2Dwhile/mul_7:z:0while/split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?q
while/Mul_8Mulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????@@ w
while/Add_1AddV2while/Mul_8:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????@@ b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_9Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????@@ w
while/Add_3AddV2while/Mul_9:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????@@ d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ \
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ }
while/mul_10Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????@@ ?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ ]

while/TanhTanhwhile/add_4:z:0*
T0*/
_output_shapes
:?????????@@ v
while/mul_11Mulwhile/clip_by_value:z:0while/Tanh:y:0*
T0*/
_output_shapes
:?????????@@ r
while/add_5AddV2while/mul_10:z:0while/mul_11:z:0*
T0*/
_output_shapes
:?????????@@ ?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_12Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????@@ x
while/Add_7AddV2while/Mul_12:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????@@ d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ \
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ _
while/Tanh_1Tanhwhile/add_5:z:0*
T0*/
_output_shapes
:?????????@@ z
while/mul_13Mulwhile/clip_by_value_2:z:0while/Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ ?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_13:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: u
while/Identity_4Identitywhile/mul_13:z:0^while/NoOp*
T0*/
_output_shapes
:?????????@@ t
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:?????????@@ ?

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
: 
?
?
2__inference_conv_lstm_cell_39_layer_call_fn_104314

inputs
states_0
states_1"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????@@ :?????????@@ :?????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_100706w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@ y

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:?????????@@ y

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:?????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????@@:?????????@@ :?????????@@ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????@@ 
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????@@ 
"
_user_specified_name
states/1
?
?
C__inference_model_5_layer_call_and_return_conditional_losses_102004

inputs0
conv_lstm2d_36_101980:?0
conv_lstm2d_36_101982: ?$
conv_lstm2d_36_101984:	?+
batch_normalization_36_101987: +
batch_normalization_36_101989: +
batch_normalization_36_101991: +
batch_normalization_36_101993: -
conv3d_5_101996: 
conv3d_5_101998:
identity??.batch_normalization_36/StatefulPartitionedCall? conv3d_5/StatefulPartitionedCall?&conv_lstm2d_36/StatefulPartitionedCall?
&conv_lstm2d_36/StatefulPartitionedCallStatefulPartitionedCallinputsconv_lstm2d_36_101980conv_lstm2d_36_101982conv_lstm2d_36_101984*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_101943?
.batch_normalization_36/StatefulPartitionedCallStatefulPartitionedCall/conv_lstm2d_36/StatefulPartitionedCall:output:0batch_normalization_36_101987batch_normalization_36_101989batch_normalization_36_101991batch_normalization_36_101993*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_101541?
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_36/StatefulPartitionedCall:output:0conv3d_5_101996conv3d_5_101998*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv3d_5_layer_call_and_return_conditional_losses_101468]
tf.math.multiply_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?D?
tf.math.multiply_5/MulMul)conv3d_5/StatefulPartitionedCall:output:0!tf.math.multiply_5/Mul/y:output:0*
T0*<
_output_shapes*
(:&??????????????????@@~
IdentityIdentitytf.math.multiply_5/Mul:z:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@?
NoOpNoOp/^batch_normalization_36/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall'^conv_lstm2d_36/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::&??????????????????@@: : : : : : : : : 2`
.batch_normalization_36/StatefulPartitionedCall.batch_normalization_36/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2P
&conv_lstm2d_36/StatefulPartitionedCall&conv_lstm2d_36/StatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
??
?	
C__inference_model_5_layer_call_and_return_conditional_losses_102853

inputsG
,conv_lstm2d_36_split_readvariableop_resource:?I
.conv_lstm2d_36_split_1_readvariableop_resource: ?=
.conv_lstm2d_36_split_2_readvariableop_resource:	?<
.batch_normalization_36_readvariableop_resource: >
0batch_normalization_36_readvariableop_1_resource: M
?batch_normalization_36_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_36_fusedbatchnormv3_readvariableop_1_resource: E
'conv3d_5_conv3d_readvariableop_resource: 6
(conv3d_5_biasadd_readvariableop_resource:
identity??%batch_normalization_36/AssignNewValue?'batch_normalization_36/AssignNewValue_1?6batch_normalization_36/FusedBatchNormV3/ReadVariableOp?8batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_36/ReadVariableOp?'batch_normalization_36/ReadVariableOp_1?conv3d_5/BiasAdd/ReadVariableOp?conv3d_5/Conv3D/ReadVariableOp?#conv_lstm2d_36/split/ReadVariableOp?%conv_lstm2d_36/split_1/ReadVariableOp?%conv_lstm2d_36/split_2/ReadVariableOp?conv_lstm2d_36/whileu
conv_lstm2d_36/zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????@@f
$conv_lstm2d_36/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
conv_lstm2d_36/SumSumconv_lstm2d_36/zeros_like:y:0-conv_lstm2d_36/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@@y
conv_lstm2d_36/zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    ?
conv_lstm2d_36/convolutionConv2Dconv_lstm2d_36/Sum:output:0conv_lstm2d_36/zeros:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
z
conv_lstm2d_36/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
conv_lstm2d_36/transpose	Transposeinputs&conv_lstm2d_36/transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@`
conv_lstm2d_36/ShapeShapeconv_lstm2d_36/transpose:y:0*
T0*
_output_shapes
:l
"conv_lstm2d_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$conv_lstm2d_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$conv_lstm2d_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_lstm2d_36/strided_sliceStridedSliceconv_lstm2d_36/Shape:output:0+conv_lstm2d_36/strided_slice/stack:output:0-conv_lstm2d_36/strided_slice/stack_1:output:0-conv_lstm2d_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*conv_lstm2d_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv_lstm2d_36/TensorArrayV2TensorListReserve3conv_lstm2d_36/TensorArrayV2/element_shape:output:0%conv_lstm2d_36/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
conv_lstm2d_36/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ?
conv_lstm2d_36/ReverseV2	ReverseV2conv_lstm2d_36/transpose:y:0&conv_lstm2d_36/ReverseV2/axis:output:0*
T0*<
_output_shapes*
(:&??????????????????@@?
Dconv_lstm2d_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
6conv_lstm2d_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!conv_lstm2d_36/ReverseV2:output:0Mconv_lstm2d_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???n
$conv_lstm2d_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv_lstm2d_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv_lstm2d_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_lstm2d_36/strided_slice_1StridedSliceconv_lstm2d_36/transpose:y:0-conv_lstm2d_36/strided_slice_1/stack:output:0/conv_lstm2d_36/strided_slice_1/stack_1:output:0/conv_lstm2d_36/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@*
shrink_axis_masku
conv_lstm2d_36/ones_like/ShapeShape'conv_lstm2d_36/strided_slice_1:output:0*
T0*
_output_shapes
:c
conv_lstm2d_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
conv_lstm2d_36/ones_likeFill'conv_lstm2d_36/ones_like/Shape:output:0'conv_lstm2d_36/ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@a
conv_lstm2d_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
conv_lstm2d_36/dropout/MulMul!conv_lstm2d_36/ones_like:output:0%conv_lstm2d_36/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@m
conv_lstm2d_36/dropout/ShapeShape!conv_lstm2d_36/ones_like:output:0*
T0*
_output_shapes
:?
3conv_lstm2d_36/dropout/random_uniform/RandomUniformRandomUniform%conv_lstm2d_36/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???j
%conv_lstm2d_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
#conv_lstm2d_36/dropout/GreaterEqualGreaterEqual<conv_lstm2d_36/dropout/random_uniform/RandomUniform:output:0.conv_lstm2d_36/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/dropout/CastCast'conv_lstm2d_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
conv_lstm2d_36/dropout/Mul_1Mulconv_lstm2d_36/dropout/Mul:z:0conv_lstm2d_36/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@c
conv_lstm2d_36/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
conv_lstm2d_36/dropout_1/MulMul!conv_lstm2d_36/ones_like:output:0'conv_lstm2d_36/dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????@@o
conv_lstm2d_36/dropout_1/ShapeShape!conv_lstm2d_36/ones_like:output:0*
T0*
_output_shapes
:?
5conv_lstm2d_36/dropout_1/random_uniform/RandomUniformRandomUniform'conv_lstm2d_36/dropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2??hl
'conv_lstm2d_36/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
%conv_lstm2d_36/dropout_1/GreaterEqualGreaterEqual>conv_lstm2d_36/dropout_1/random_uniform/RandomUniform:output:00conv_lstm2d_36/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/dropout_1/CastCast)conv_lstm2d_36/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
conv_lstm2d_36/dropout_1/Mul_1Mul conv_lstm2d_36/dropout_1/Mul:z:0!conv_lstm2d_36/dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????@@c
conv_lstm2d_36/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
conv_lstm2d_36/dropout_2/MulMul!conv_lstm2d_36/ones_like:output:0'conv_lstm2d_36/dropout_2/Const:output:0*
T0*/
_output_shapes
:?????????@@o
conv_lstm2d_36/dropout_2/ShapeShape!conv_lstm2d_36/ones_like:output:0*
T0*
_output_shapes
:?
5conv_lstm2d_36/dropout_2/random_uniform/RandomUniformRandomUniform'conv_lstm2d_36/dropout_2/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???l
'conv_lstm2d_36/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
%conv_lstm2d_36/dropout_2/GreaterEqualGreaterEqual>conv_lstm2d_36/dropout_2/random_uniform/RandomUniform:output:00conv_lstm2d_36/dropout_2/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/dropout_2/CastCast)conv_lstm2d_36/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
conv_lstm2d_36/dropout_2/Mul_1Mul conv_lstm2d_36/dropout_2/Mul:z:0!conv_lstm2d_36/dropout_2/Cast:y:0*
T0*/
_output_shapes
:?????????@@c
conv_lstm2d_36/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
conv_lstm2d_36/dropout_3/MulMul!conv_lstm2d_36/ones_like:output:0'conv_lstm2d_36/dropout_3/Const:output:0*
T0*/
_output_shapes
:?????????@@o
conv_lstm2d_36/dropout_3/ShapeShape!conv_lstm2d_36/ones_like:output:0*
T0*
_output_shapes
:?
5conv_lstm2d_36/dropout_3/random_uniform/RandomUniformRandomUniform'conv_lstm2d_36/dropout_3/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2??Zl
'conv_lstm2d_36/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
%conv_lstm2d_36/dropout_3/GreaterEqualGreaterEqual>conv_lstm2d_36/dropout_3/random_uniform/RandomUniform:output:00conv_lstm2d_36/dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/dropout_3/CastCast)conv_lstm2d_36/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@?
conv_lstm2d_36/dropout_3/Mul_1Mul conv_lstm2d_36/dropout_3/Mul:z:0!conv_lstm2d_36/dropout_3/Cast:y:0*
T0*/
_output_shapes
:?????????@@s
 conv_lstm2d_36/ones_like_1/ShapeShape#conv_lstm2d_36/convolution:output:0*
T0*
_output_shapes
:e
 conv_lstm2d_36/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
conv_lstm2d_36/ones_like_1Fill)conv_lstm2d_36/ones_like_1/Shape:output:0)conv_lstm2d_36/ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ c
conv_lstm2d_36/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
conv_lstm2d_36/dropout_4/MulMul#conv_lstm2d_36/ones_like_1:output:0'conv_lstm2d_36/dropout_4/Const:output:0*
T0*/
_output_shapes
:?????????@@ q
conv_lstm2d_36/dropout_4/ShapeShape#conv_lstm2d_36/ones_like_1:output:0*
T0*
_output_shapes
:?
5conv_lstm2d_36/dropout_4/random_uniform/RandomUniformRandomUniform'conv_lstm2d_36/dropout_4/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???l
'conv_lstm2d_36/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
%conv_lstm2d_36/dropout_4/GreaterEqualGreaterEqual>conv_lstm2d_36/dropout_4/random_uniform/RandomUniform:output:00conv_lstm2d_36/dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/dropout_4/CastCast)conv_lstm2d_36/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/dropout_4/Mul_1Mul conv_lstm2d_36/dropout_4/Mul:z:0!conv_lstm2d_36/dropout_4/Cast:y:0*
T0*/
_output_shapes
:?????????@@ c
conv_lstm2d_36/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
conv_lstm2d_36/dropout_5/MulMul#conv_lstm2d_36/ones_like_1:output:0'conv_lstm2d_36/dropout_5/Const:output:0*
T0*/
_output_shapes
:?????????@@ q
conv_lstm2d_36/dropout_5/ShapeShape#conv_lstm2d_36/ones_like_1:output:0*
T0*
_output_shapes
:?
5conv_lstm2d_36/dropout_5/random_uniform/RandomUniformRandomUniform'conv_lstm2d_36/dropout_5/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???l
'conv_lstm2d_36/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
%conv_lstm2d_36/dropout_5/GreaterEqualGreaterEqual>conv_lstm2d_36/dropout_5/random_uniform/RandomUniform:output:00conv_lstm2d_36/dropout_5/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/dropout_5/CastCast)conv_lstm2d_36/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/dropout_5/Mul_1Mul conv_lstm2d_36/dropout_5/Mul:z:0!conv_lstm2d_36/dropout_5/Cast:y:0*
T0*/
_output_shapes
:?????????@@ c
conv_lstm2d_36/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
conv_lstm2d_36/dropout_6/MulMul#conv_lstm2d_36/ones_like_1:output:0'conv_lstm2d_36/dropout_6/Const:output:0*
T0*/
_output_shapes
:?????????@@ q
conv_lstm2d_36/dropout_6/ShapeShape#conv_lstm2d_36/ones_like_1:output:0*
T0*
_output_shapes
:?
5conv_lstm2d_36/dropout_6/random_uniform/RandomUniformRandomUniform'conv_lstm2d_36/dropout_6/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???l
'conv_lstm2d_36/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
%conv_lstm2d_36/dropout_6/GreaterEqualGreaterEqual>conv_lstm2d_36/dropout_6/random_uniform/RandomUniform:output:00conv_lstm2d_36/dropout_6/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/dropout_6/CastCast)conv_lstm2d_36/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/dropout_6/Mul_1Mul conv_lstm2d_36/dropout_6/Mul:z:0!conv_lstm2d_36/dropout_6/Cast:y:0*
T0*/
_output_shapes
:?????????@@ c
conv_lstm2d_36/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
conv_lstm2d_36/dropout_7/MulMul#conv_lstm2d_36/ones_like_1:output:0'conv_lstm2d_36/dropout_7/Const:output:0*
T0*/
_output_shapes
:?????????@@ q
conv_lstm2d_36/dropout_7/ShapeShape#conv_lstm2d_36/ones_like_1:output:0*
T0*
_output_shapes
:?
5conv_lstm2d_36/dropout_7/random_uniform/RandomUniformRandomUniform'conv_lstm2d_36/dropout_7/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???l
'conv_lstm2d_36/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
%conv_lstm2d_36/dropout_7/GreaterEqualGreaterEqual>conv_lstm2d_36/dropout_7/random_uniform/RandomUniform:output:00conv_lstm2d_36/dropout_7/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/dropout_7/CastCast)conv_lstm2d_36/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/dropout_7/Mul_1Mul conv_lstm2d_36/dropout_7/Mul:z:0!conv_lstm2d_36/dropout_7/Cast:y:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mulMul'conv_lstm2d_36/strided_slice_1:output:0 conv_lstm2d_36/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/mul_1Mul'conv_lstm2d_36/strided_slice_1:output:0"conv_lstm2d_36/dropout_1/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/mul_2Mul'conv_lstm2d_36/strided_slice_1:output:0"conv_lstm2d_36/dropout_2/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/mul_3Mul'conv_lstm2d_36/strided_slice_1:output:0"conv_lstm2d_36/dropout_3/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@?
conv_lstm2d_36/mul_4Mul#conv_lstm2d_36/convolution:output:0"conv_lstm2d_36/dropout_4/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mul_5Mul#conv_lstm2d_36/convolution:output:0"conv_lstm2d_36/dropout_5/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mul_6Mul#conv_lstm2d_36/convolution:output:0"conv_lstm2d_36/dropout_6/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mul_7Mul#conv_lstm2d_36/convolution:output:0"conv_lstm2d_36/dropout_7/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ `
conv_lstm2d_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
#conv_lstm2d_36/split/ReadVariableOpReadVariableOp,conv_lstm2d_36_split_readvariableop_resource*'
_output_shapes
:?*
dtype0?
conv_lstm2d_36/splitSplit'conv_lstm2d_36/split/split_dim:output:0+conv_lstm2d_36/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitb
 conv_lstm2d_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
%conv_lstm2d_36/split_1/ReadVariableOpReadVariableOp.conv_lstm2d_36_split_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
conv_lstm2d_36/split_1Split)conv_lstm2d_36/split_1/split_dim:output:0-conv_lstm2d_36/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitb
 conv_lstm2d_36/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
%conv_lstm2d_36/split_2/ReadVariableOpReadVariableOp.conv_lstm2d_36_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv_lstm2d_36/split_2Split)conv_lstm2d_36/split_2/split_dim:output:0-conv_lstm2d_36/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
conv_lstm2d_36/convolution_1Conv2Dconv_lstm2d_36/mul:z:0conv_lstm2d_36/split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/BiasAddBiasAdd%conv_lstm2d_36/convolution_1:output:0conv_lstm2d_36/split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/convolution_2Conv2Dconv_lstm2d_36/mul_1:z:0conv_lstm2d_36/split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/BiasAdd_1BiasAdd%conv_lstm2d_36/convolution_2:output:0conv_lstm2d_36/split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/convolution_3Conv2Dconv_lstm2d_36/mul_2:z:0conv_lstm2d_36/split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/BiasAdd_2BiasAdd%conv_lstm2d_36/convolution_3:output:0conv_lstm2d_36/split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/convolution_4Conv2Dconv_lstm2d_36/mul_3:z:0conv_lstm2d_36/split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/BiasAdd_3BiasAdd%conv_lstm2d_36/convolution_4:output:0conv_lstm2d_36/split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/convolution_5Conv2Dconv_lstm2d_36/mul_4:z:0conv_lstm2d_36/split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/convolution_6Conv2Dconv_lstm2d_36/mul_5:z:0conv_lstm2d_36/split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/convolution_7Conv2Dconv_lstm2d_36/mul_6:z:0conv_lstm2d_36/split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/convolution_8Conv2Dconv_lstm2d_36/mul_7:z:0conv_lstm2d_36/split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
conv_lstm2d_36/addAddV2conv_lstm2d_36/BiasAdd:output:0%conv_lstm2d_36/convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ Y
conv_lstm2d_36/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>[
conv_lstm2d_36/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
conv_lstm2d_36/Mul_8Mulconv_lstm2d_36/add:z:0conv_lstm2d_36/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/Add_1AddV2conv_lstm2d_36/Mul_8:z:0conv_lstm2d_36/Const_1:output:0*
T0*/
_output_shapes
:?????????@@ k
&conv_lstm2d_36/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
$conv_lstm2d_36/clip_by_value/MinimumMinimumconv_lstm2d_36/Add_1:z:0/conv_lstm2d_36/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ c
conv_lstm2d_36/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv_lstm2d_36/clip_by_valueMaximum(conv_lstm2d_36/clip_by_value/Minimum:z:0'conv_lstm2d_36/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/add_2AddV2!conv_lstm2d_36/BiasAdd_1:output:0%conv_lstm2d_36/convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ [
conv_lstm2d_36/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>[
conv_lstm2d_36/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
conv_lstm2d_36/Mul_9Mulconv_lstm2d_36/add_2:z:0conv_lstm2d_36/Const_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/Add_3AddV2conv_lstm2d_36/Mul_9:z:0conv_lstm2d_36/Const_3:output:0*
T0*/
_output_shapes
:?????????@@ m
(conv_lstm2d_36/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
&conv_lstm2d_36/clip_by_value_1/MinimumMinimumconv_lstm2d_36/Add_3:z:01conv_lstm2d_36/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ e
 conv_lstm2d_36/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv_lstm2d_36/clip_by_value_1Maximum*conv_lstm2d_36/clip_by_value_1/Minimum:z:0)conv_lstm2d_36/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mul_10Mul"conv_lstm2d_36/clip_by_value_1:z:0#conv_lstm2d_36/convolution:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/add_4AddV2!conv_lstm2d_36/BiasAdd_2:output:0%conv_lstm2d_36/convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ o
conv_lstm2d_36/TanhTanhconv_lstm2d_36/add_4:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mul_11Mul conv_lstm2d_36/clip_by_value:z:0conv_lstm2d_36/Tanh:y:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/add_5AddV2conv_lstm2d_36/mul_10:z:0conv_lstm2d_36/mul_11:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/add_6AddV2!conv_lstm2d_36/BiasAdd_3:output:0%conv_lstm2d_36/convolution_8:output:0*
T0*/
_output_shapes
:?????????@@ [
conv_lstm2d_36/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>[
conv_lstm2d_36/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
conv_lstm2d_36/Mul_12Mulconv_lstm2d_36/add_6:z:0conv_lstm2d_36/Const_4:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/Add_7AddV2conv_lstm2d_36/Mul_12:z:0conv_lstm2d_36/Const_5:output:0*
T0*/
_output_shapes
:?????????@@ m
(conv_lstm2d_36/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
&conv_lstm2d_36/clip_by_value_2/MinimumMinimumconv_lstm2d_36/Add_7:z:01conv_lstm2d_36/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ e
 conv_lstm2d_36/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv_lstm2d_36/clip_by_value_2Maximum*conv_lstm2d_36/clip_by_value_2/Minimum:z:0)conv_lstm2d_36/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ q
conv_lstm2d_36/Tanh_1Tanhconv_lstm2d_36/add_5:z:0*
T0*/
_output_shapes
:?????????@@ ?
conv_lstm2d_36/mul_13Mul"conv_lstm2d_36/clip_by_value_2:z:0conv_lstm2d_36/Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ ?
,conv_lstm2d_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
conv_lstm2d_36/TensorArrayV2_1TensorListReserve5conv_lstm2d_36/TensorArrayV2_1/element_shape:output:0%conv_lstm2d_36/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???U
conv_lstm2d_36/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'conv_lstm2d_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????c
!conv_lstm2d_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
conv_lstm2d_36/whileWhile*conv_lstm2d_36/while/loop_counter:output:00conv_lstm2d_36/while/maximum_iterations:output:0conv_lstm2d_36/time:output:0'conv_lstm2d_36/TensorArrayV2_1:handle:0#conv_lstm2d_36/convolution:output:0#conv_lstm2d_36/convolution:output:0%conv_lstm2d_36/strided_slice:output:0Fconv_lstm2d_36/TensorArrayUnstack/TensorListFromTensor:output_handle:0,conv_lstm2d_36_split_readvariableop_resource.conv_lstm2d_36_split_1_readvariableop_resource.conv_lstm2d_36_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 conv_lstm2d_36_while_body_102626*,
cond$R"
 conv_lstm2d_36_while_cond_102625*[
output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *
parallel_iterations ?
?conv_lstm2d_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
1conv_lstm2d_36/TensorArrayV2Stack/TensorListStackTensorListStackconv_lstm2d_36/while:output:3Hconv_lstm2d_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????@@ *
element_dtype0w
$conv_lstm2d_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????p
&conv_lstm2d_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&conv_lstm2d_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_lstm2d_36/strided_slice_2StridedSlice:conv_lstm2d_36/TensorArrayV2Stack/TensorListStack:tensor:0-conv_lstm2d_36/strided_slice_2/stack:output:0/conv_lstm2d_36/strided_slice_2/stack_1:output:0/conv_lstm2d_36/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@ *
shrink_axis_mask|
conv_lstm2d_36/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
conv_lstm2d_36/transpose_1	Transpose:conv_lstm2d_36/TensorArrayV2Stack/TensorListStack:tensor:0(conv_lstm2d_36/transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@ ?
%batch_normalization_36/ReadVariableOpReadVariableOp.batch_normalization_36_readvariableop_resource*
_output_shapes
: *
dtype0?
'batch_normalization_36/ReadVariableOp_1ReadVariableOp0batch_normalization_36_readvariableop_1_resource*
_output_shapes
: *
dtype0?
6batch_normalization_36/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_36_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
8batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_36_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
'batch_normalization_36/FusedBatchNormV3FusedBatchNormV3conv_lstm2d_36/transpose_1:y:0-batch_normalization_36/ReadVariableOp:value:0/batch_normalization_36/ReadVariableOp_1:value:0>batch_normalization_36/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*X
_output_shapesF
D:&??????????????????@@ : : : : :*
data_formatNDHWC*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_36/AssignNewValueAssignVariableOp?batch_normalization_36_fusedbatchnormv3_readvariableop_resource4batch_normalization_36/FusedBatchNormV3:batch_mean:07^batch_normalization_36/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
'batch_normalization_36/AssignNewValue_1AssignVariableOpAbatch_normalization_36_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_36/FusedBatchNormV3:batch_variance:09^batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource**
_output_shapes
: *
dtype0?
conv3d_5/Conv3DConv3D+batch_normalization_36/FusedBatchNormV3:y:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????@@*
paddingSAME*
strides	
?
conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????@@}
conv3d_5/SigmoidSigmoidconv3d_5/BiasAdd:output:0*
T0*<
_output_shapes*
(:&??????????????????@@]
tf.math.multiply_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?D?
tf.math.multiply_5/MulMulconv3d_5/Sigmoid:y:0!tf.math.multiply_5/Mul/y:output:0*
T0*<
_output_shapes*
(:&??????????????????@@~
IdentityIdentitytf.math.multiply_5/Mul:z:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@?
NoOpNoOp&^batch_normalization_36/AssignNewValue(^batch_normalization_36/AssignNewValue_17^batch_normalization_36/FusedBatchNormV3/ReadVariableOp9^batch_normalization_36/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_36/ReadVariableOp(^batch_normalization_36/ReadVariableOp_1 ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp$^conv_lstm2d_36/split/ReadVariableOp&^conv_lstm2d_36/split_1/ReadVariableOp&^conv_lstm2d_36/split_2/ReadVariableOp^conv_lstm2d_36/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::&??????????????????@@: : : : : : : : : 2N
%batch_normalization_36/AssignNewValue%batch_normalization_36/AssignNewValue2R
'batch_normalization_36/AssignNewValue_1'batch_normalization_36/AssignNewValue_12p
6batch_normalization_36/FusedBatchNormV3/ReadVariableOp6batch_normalization_36/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_36/FusedBatchNormV3/ReadVariableOp_18batch_normalization_36/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_36/ReadVariableOp%batch_normalization_36/ReadVariableOp2R
'batch_normalization_36/ReadVariableOp_1'batch_normalization_36/ReadVariableOp_12B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp2J
#conv_lstm2d_36/split/ReadVariableOp#conv_lstm2d_36/split/ReadVariableOp2N
%conv_lstm2d_36/split_1/ReadVariableOp%conv_lstm2d_36/split_1/ReadVariableOp2N
%conv_lstm2d_36/split_2/ReadVariableOp%conv_lstm2d_36/split_2/ReadVariableOp2,
conv_lstm2d_36/whileconv_lstm2d_36/while:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_104277

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*X
_output_shapesF
D:&??????????????????@@ : : : : :*
data_formatNDHWC*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????@@ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:d `
<
_output_shapes*
(:&??????????????????@@ 
 
_user_specified_nameinputs
خ
?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_103525
inputs_08
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whileh

zeros_like	ZerosLikeinputs_0*
T0*<
_output_shapes*
(:&??????????????????@@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@@j
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    ?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ?
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*<
_output_shapes*
(:&??????????????????@@?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@*
shrink_axis_maskW
ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?x
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2?]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2ӆ?]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*/
_output_shapes
:?????????@@U
ones_like_1/ShapeShapeconvolution:output:0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2ۊ?]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2쬒]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*/
_output_shapes
:?????????@@ q
mulMulstrided_slice_1:output:0dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@u
mul_1Mulstrided_slice_1:output:0dropout_1/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@u
mul_2Mulstrided_slice_1:output:0dropout_2/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@u
mul_3Mulstrided_slice_1:output:0dropout_3/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@q
mul_4Mulconvolution:output:0dropout_4/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ q
mul_5Mulconvolution:output:0dropout_5/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ q
mul_6Mulconvolution:output:0dropout_6/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ q
mul_7Mulconvolution:output:0dropout_7/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype0?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
convolution_1Conv2Dmul:z:0split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
v
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
convolution_2Conv2D	mul_1:z:0split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
convolution_3Conv2D	mul_2:z:0split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
convolution_4Conv2D	mul_3:z:0split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
convolution_5Conv2D	mul_4:z:0split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_6Conv2D	mul_5:z:0split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_7Conv2D	mul_6:z:0split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_8Conv2D	mul_7:z:0split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?_
Mul_8Muladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????@@ \
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ t
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_10Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????@@ t
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ Q
TanhTanh	add_4:z:0*
T0*/
_output_shapes
:?????????@@ d
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*/
_output_shapes
:?????????@@ `
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*/
_output_shapes
:?????????@@ t
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????@@ f
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ S
Tanh_1Tanh	add_5:z:0*
T0*/
_output_shapes
:?????????@@ h
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_103321*
condR
while_cond_103320*[
output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????@@ *
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@ *
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@ s
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ ?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????@@: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:f b
<
_output_shapes*
(:&??????????????????@@
"
_user_specified_name
inputs/0
??
?
(model_5_conv_lstm2d_36_while_body_100425J
Fmodel_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_while_loop_counterP
Lmodel_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_while_maximum_iterations,
(model_5_conv_lstm2d_36_while_placeholder.
*model_5_conv_lstm2d_36_while_placeholder_1.
*model_5_conv_lstm2d_36_while_placeholder_2.
*model_5_conv_lstm2d_36_while_placeholder_3G
Cmodel_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_strided_slice_0?
?model_5_conv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_model_5_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensor_0W
<model_5_conv_lstm2d_36_while_split_readvariableop_resource_0:?Y
>model_5_conv_lstm2d_36_while_split_1_readvariableop_resource_0: ?M
>model_5_conv_lstm2d_36_while_split_2_readvariableop_resource_0:	?)
%model_5_conv_lstm2d_36_while_identity+
'model_5_conv_lstm2d_36_while_identity_1+
'model_5_conv_lstm2d_36_while_identity_2+
'model_5_conv_lstm2d_36_while_identity_3+
'model_5_conv_lstm2d_36_while_identity_4+
'model_5_conv_lstm2d_36_while_identity_5E
Amodel_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_strided_slice?
model_5_conv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_model_5_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensorU
:model_5_conv_lstm2d_36_while_split_readvariableop_resource:?W
<model_5_conv_lstm2d_36_while_split_1_readvariableop_resource: ?K
<model_5_conv_lstm2d_36_while_split_2_readvariableop_resource:	???1model_5/conv_lstm2d_36/while/split/ReadVariableOp?3model_5/conv_lstm2d_36/while/split_1/ReadVariableOp?3model_5/conv_lstm2d_36/while/split_2/ReadVariableOp?
Nmodel_5/conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
@model_5/conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?model_5_conv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_model_5_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensor_0(model_5_conv_lstm2d_36_while_placeholderWmodel_5/conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????@@*
element_dtype0?
,model_5/conv_lstm2d_36/while/ones_like/ShapeShapeGmodel_5/conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:q
,model_5/conv_lstm2d_36/while/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
&model_5/conv_lstm2d_36/while/ones_likeFill5model_5/conv_lstm2d_36/while/ones_like/Shape:output:05model_5/conv_lstm2d_36/while/ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@?
.model_5/conv_lstm2d_36/while/ones_like_1/ShapeShape*model_5_conv_lstm2d_36_while_placeholder_2*
T0*
_output_shapes
:s
.model_5/conv_lstm2d_36/while/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
(model_5/conv_lstm2d_36/while/ones_like_1Fill7model_5/conv_lstm2d_36/while/ones_like_1/Shape:output:07model_5/conv_lstm2d_36/while/ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
 model_5/conv_lstm2d_36/while/mulMulGmodel_5/conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0/model_5/conv_lstm2d_36/while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
"model_5/conv_lstm2d_36/while/mul_1MulGmodel_5/conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0/model_5/conv_lstm2d_36/while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
"model_5/conv_lstm2d_36/while/mul_2MulGmodel_5/conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0/model_5/conv_lstm2d_36/while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
"model_5/conv_lstm2d_36/while/mul_3MulGmodel_5/conv_lstm2d_36/while/TensorArrayV2Read/TensorListGetItem:item:0/model_5/conv_lstm2d_36/while/ones_like:output:0*
T0*/
_output_shapes
:?????????@@?
"model_5/conv_lstm2d_36/while/mul_4Mul*model_5_conv_lstm2d_36_while_placeholder_21model_5/conv_lstm2d_36/while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ ?
"model_5/conv_lstm2d_36/while/mul_5Mul*model_5_conv_lstm2d_36_while_placeholder_21model_5/conv_lstm2d_36/while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ ?
"model_5/conv_lstm2d_36/while/mul_6Mul*model_5_conv_lstm2d_36_while_placeholder_21model_5/conv_lstm2d_36/while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ ?
"model_5/conv_lstm2d_36/while/mul_7Mul*model_5_conv_lstm2d_36_while_placeholder_21model_5/conv_lstm2d_36/while/ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ n
,model_5/conv_lstm2d_36/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1model_5/conv_lstm2d_36/while/split/ReadVariableOpReadVariableOp<model_5_conv_lstm2d_36_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype0?
"model_5/conv_lstm2d_36/while/splitSplit5model_5/conv_lstm2d_36/while/split/split_dim:output:09model_5/conv_lstm2d_36/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitp
.model_5/conv_lstm2d_36/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
3model_5/conv_lstm2d_36/while/split_1/ReadVariableOpReadVariableOp>model_5_conv_lstm2d_36_while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype0?
$model_5/conv_lstm2d_36/while/split_1Split7model_5/conv_lstm2d_36/while/split_1/split_dim:output:0;model_5/conv_lstm2d_36/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitp
.model_5/conv_lstm2d_36/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
3model_5/conv_lstm2d_36/while/split_2/ReadVariableOpReadVariableOp>model_5_conv_lstm2d_36_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$model_5/conv_lstm2d_36/while/split_2Split7model_5/conv_lstm2d_36/while/split_2/split_dim:output:0;model_5/conv_lstm2d_36/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
(model_5/conv_lstm2d_36/while/convolutionConv2D$model_5/conv_lstm2d_36/while/mul:z:0+model_5/conv_lstm2d_36/while/split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
$model_5/conv_lstm2d_36/while/BiasAddBiasAdd1model_5/conv_lstm2d_36/while/convolution:output:0-model_5/conv_lstm2d_36/while/split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
*model_5/conv_lstm2d_36/while/convolution_1Conv2D&model_5/conv_lstm2d_36/while/mul_1:z:0+model_5/conv_lstm2d_36/while/split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
&model_5/conv_lstm2d_36/while/BiasAdd_1BiasAdd3model_5/conv_lstm2d_36/while/convolution_1:output:0-model_5/conv_lstm2d_36/while/split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
*model_5/conv_lstm2d_36/while/convolution_2Conv2D&model_5/conv_lstm2d_36/while/mul_2:z:0+model_5/conv_lstm2d_36/while/split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
&model_5/conv_lstm2d_36/while/BiasAdd_2BiasAdd3model_5/conv_lstm2d_36/while/convolution_2:output:0-model_5/conv_lstm2d_36/while/split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
*model_5/conv_lstm2d_36/while/convolution_3Conv2D&model_5/conv_lstm2d_36/while/mul_3:z:0+model_5/conv_lstm2d_36/while/split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
&model_5/conv_lstm2d_36/while/BiasAdd_3BiasAdd3model_5/conv_lstm2d_36/while/convolution_3:output:0-model_5/conv_lstm2d_36/while/split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
*model_5/conv_lstm2d_36/while/convolution_4Conv2D&model_5/conv_lstm2d_36/while/mul_4:z:0-model_5/conv_lstm2d_36/while/split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
*model_5/conv_lstm2d_36/while/convolution_5Conv2D&model_5/conv_lstm2d_36/while/mul_5:z:0-model_5/conv_lstm2d_36/while/split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
*model_5/conv_lstm2d_36/while/convolution_6Conv2D&model_5/conv_lstm2d_36/while/mul_6:z:0-model_5/conv_lstm2d_36/while/split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
*model_5/conv_lstm2d_36/while/convolution_7Conv2D&model_5/conv_lstm2d_36/while/mul_7:z:0-model_5/conv_lstm2d_36/while/split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
 model_5/conv_lstm2d_36/while/addAddV2-model_5/conv_lstm2d_36/while/BiasAdd:output:03model_5/conv_lstm2d_36/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ g
"model_5/conv_lstm2d_36/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>i
$model_5/conv_lstm2d_36/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
"model_5/conv_lstm2d_36/while/Mul_8Mul$model_5/conv_lstm2d_36/while/add:z:0+model_5/conv_lstm2d_36/while/Const:output:0*
T0*/
_output_shapes
:?????????@@ ?
"model_5/conv_lstm2d_36/while/Add_1AddV2&model_5/conv_lstm2d_36/while/Mul_8:z:0-model_5/conv_lstm2d_36/while/Const_1:output:0*
T0*/
_output_shapes
:?????????@@ y
4model_5/conv_lstm2d_36/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
2model_5/conv_lstm2d_36/while/clip_by_value/MinimumMinimum&model_5/conv_lstm2d_36/while/Add_1:z:0=model_5/conv_lstm2d_36/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ q
,model_5/conv_lstm2d_36/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
*model_5/conv_lstm2d_36/while/clip_by_valueMaximum6model_5/conv_lstm2d_36/while/clip_by_value/Minimum:z:05model_5/conv_lstm2d_36/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
"model_5/conv_lstm2d_36/while/add_2AddV2/model_5/conv_lstm2d_36/while/BiasAdd_1:output:03model_5/conv_lstm2d_36/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ i
$model_5/conv_lstm2d_36/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>i
$model_5/conv_lstm2d_36/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
"model_5/conv_lstm2d_36/while/Mul_9Mul&model_5/conv_lstm2d_36/while/add_2:z:0-model_5/conv_lstm2d_36/while/Const_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
"model_5/conv_lstm2d_36/while/Add_3AddV2&model_5/conv_lstm2d_36/while/Mul_9:z:0-model_5/conv_lstm2d_36/while/Const_3:output:0*
T0*/
_output_shapes
:?????????@@ {
6model_5/conv_lstm2d_36/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
4model_5/conv_lstm2d_36/while/clip_by_value_1/MinimumMinimum&model_5/conv_lstm2d_36/while/Add_3:z:0?model_5/conv_lstm2d_36/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ s
.model_5/conv_lstm2d_36/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
,model_5/conv_lstm2d_36/while/clip_by_value_1Maximum8model_5/conv_lstm2d_36/while/clip_by_value_1/Minimum:z:07model_5/conv_lstm2d_36/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
#model_5/conv_lstm2d_36/while/mul_10Mul0model_5/conv_lstm2d_36/while/clip_by_value_1:z:0*model_5_conv_lstm2d_36_while_placeholder_3*
T0*/
_output_shapes
:?????????@@ ?
"model_5/conv_lstm2d_36/while/add_4AddV2/model_5/conv_lstm2d_36/while/BiasAdd_2:output:03model_5/conv_lstm2d_36/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ ?
!model_5/conv_lstm2d_36/while/TanhTanh&model_5/conv_lstm2d_36/while/add_4:z:0*
T0*/
_output_shapes
:?????????@@ ?
#model_5/conv_lstm2d_36/while/mul_11Mul.model_5/conv_lstm2d_36/while/clip_by_value:z:0%model_5/conv_lstm2d_36/while/Tanh:y:0*
T0*/
_output_shapes
:?????????@@ ?
"model_5/conv_lstm2d_36/while/add_5AddV2'model_5/conv_lstm2d_36/while/mul_10:z:0'model_5/conv_lstm2d_36/while/mul_11:z:0*
T0*/
_output_shapes
:?????????@@ ?
"model_5/conv_lstm2d_36/while/add_6AddV2/model_5/conv_lstm2d_36/while/BiasAdd_3:output:03model_5/conv_lstm2d_36/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ i
$model_5/conv_lstm2d_36/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>i
$model_5/conv_lstm2d_36/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ??
#model_5/conv_lstm2d_36/while/Mul_12Mul&model_5/conv_lstm2d_36/while/add_6:z:0-model_5/conv_lstm2d_36/while/Const_4:output:0*
T0*/
_output_shapes
:?????????@@ ?
"model_5/conv_lstm2d_36/while/Add_7AddV2'model_5/conv_lstm2d_36/while/Mul_12:z:0-model_5/conv_lstm2d_36/while/Const_5:output:0*
T0*/
_output_shapes
:?????????@@ {
6model_5/conv_lstm2d_36/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
4model_5/conv_lstm2d_36/while/clip_by_value_2/MinimumMinimum&model_5/conv_lstm2d_36/while/Add_7:z:0?model_5/conv_lstm2d_36/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ s
.model_5/conv_lstm2d_36/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
,model_5/conv_lstm2d_36/while/clip_by_value_2Maximum8model_5/conv_lstm2d_36/while/clip_by_value_2/Minimum:z:07model_5/conv_lstm2d_36/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ ?
#model_5/conv_lstm2d_36/while/Tanh_1Tanh&model_5/conv_lstm2d_36/while/add_5:z:0*
T0*/
_output_shapes
:?????????@@ ?
#model_5/conv_lstm2d_36/while/mul_13Mul0model_5/conv_lstm2d_36/while/clip_by_value_2:z:0'model_5/conv_lstm2d_36/while/Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ ?
Amodel_5/conv_lstm2d_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*model_5_conv_lstm2d_36_while_placeholder_1(model_5_conv_lstm2d_36_while_placeholder'model_5/conv_lstm2d_36/while/mul_13:z:0*
_output_shapes
: *
element_dtype0:???f
$model_5/conv_lstm2d_36/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :?
"model_5/conv_lstm2d_36/while/add_8AddV2(model_5_conv_lstm2d_36_while_placeholder-model_5/conv_lstm2d_36/while/add_8/y:output:0*
T0*
_output_shapes
: f
$model_5/conv_lstm2d_36/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :?
"model_5/conv_lstm2d_36/while/add_9AddV2Fmodel_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_while_loop_counter-model_5/conv_lstm2d_36/while/add_9/y:output:0*
T0*
_output_shapes
: ?
%model_5/conv_lstm2d_36/while/IdentityIdentity&model_5/conv_lstm2d_36/while/add_9:z:0"^model_5/conv_lstm2d_36/while/NoOp*
T0*
_output_shapes
: ?
'model_5/conv_lstm2d_36/while/Identity_1IdentityLmodel_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_while_maximum_iterations"^model_5/conv_lstm2d_36/while/NoOp*
T0*
_output_shapes
: ?
'model_5/conv_lstm2d_36/while/Identity_2Identity&model_5/conv_lstm2d_36/while/add_8:z:0"^model_5/conv_lstm2d_36/while/NoOp*
T0*
_output_shapes
: ?
'model_5/conv_lstm2d_36/while/Identity_3IdentityQmodel_5/conv_lstm2d_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^model_5/conv_lstm2d_36/while/NoOp*
T0*
_output_shapes
: ?
'model_5/conv_lstm2d_36/while/Identity_4Identity'model_5/conv_lstm2d_36/while/mul_13:z:0"^model_5/conv_lstm2d_36/while/NoOp*
T0*/
_output_shapes
:?????????@@ ?
'model_5/conv_lstm2d_36/while/Identity_5Identity&model_5/conv_lstm2d_36/while/add_5:z:0"^model_5/conv_lstm2d_36/while/NoOp*
T0*/
_output_shapes
:?????????@@ ?
!model_5/conv_lstm2d_36/while/NoOpNoOp2^model_5/conv_lstm2d_36/while/split/ReadVariableOp4^model_5/conv_lstm2d_36/while/split_1/ReadVariableOp4^model_5/conv_lstm2d_36/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%model_5_conv_lstm2d_36_while_identity.model_5/conv_lstm2d_36/while/Identity:output:0"[
'model_5_conv_lstm2d_36_while_identity_10model_5/conv_lstm2d_36/while/Identity_1:output:0"[
'model_5_conv_lstm2d_36_while_identity_20model_5/conv_lstm2d_36/while/Identity_2:output:0"[
'model_5_conv_lstm2d_36_while_identity_30model_5/conv_lstm2d_36/while/Identity_3:output:0"[
'model_5_conv_lstm2d_36_while_identity_40model_5/conv_lstm2d_36/while/Identity_4:output:0"[
'model_5_conv_lstm2d_36_while_identity_50model_5/conv_lstm2d_36/while/Identity_5:output:0"?
Amodel_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_strided_sliceCmodel_5_conv_lstm2d_36_while_model_5_conv_lstm2d_36_strided_slice_0"~
<model_5_conv_lstm2d_36_while_split_1_readvariableop_resource>model_5_conv_lstm2d_36_while_split_1_readvariableop_resource_0"~
<model_5_conv_lstm2d_36_while_split_2_readvariableop_resource>model_5_conv_lstm2d_36_while_split_2_readvariableop_resource_0"z
:model_5_conv_lstm2d_36_while_split_readvariableop_resource<model_5_conv_lstm2d_36_while_split_readvariableop_resource_0"?
model_5_conv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_model_5_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensor?model_5_conv_lstm2d_36_while_tensorarrayv2read_tensorlistgetitem_model_5_conv_lstm2d_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : 2f
1model_5/conv_lstm2d_36/while/split/ReadVariableOp1model_5/conv_lstm2d_36/while/split/ReadVariableOp2j
3model_5/conv_lstm2d_36/while/split_1/ReadVariableOp3model_5/conv_lstm2d_36/while/split_1/ReadVariableOp2j
3model_5/conv_lstm2d_36/while/split_2/ReadVariableOp3model_5/conv_lstm2d_36/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
: 
?D
?
__inference__traced_save_104686
file_prefix;
7savev2_batch_normalization_36_gamma_read_readvariableop:
6savev2_batch_normalization_36_beta_read_readvariableopA
=savev2_batch_normalization_36_moving_mean_read_readvariableopE
Asavev2_batch_normalization_36_moving_variance_read_readvariableop.
*savev2_conv3d_5_kernel_read_readvariableop,
(savev2_conv3d_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_conv_lstm2d_36_kernel_read_readvariableop>
:savev2_conv_lstm2d_36_recurrent_kernel_read_readvariableop2
.savev2_conv_lstm2d_36_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopB
>savev2_adam_batch_normalization_36_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_36_beta_m_read_readvariableop5
1savev2_adam_conv3d_5_kernel_m_read_readvariableop3
/savev2_adam_conv3d_5_bias_m_read_readvariableop;
7savev2_adam_conv_lstm2d_36_kernel_m_read_readvariableopE
Asavev2_adam_conv_lstm2d_36_recurrent_kernel_m_read_readvariableop9
5savev2_adam_conv_lstm2d_36_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_36_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_36_beta_v_read_readvariableop5
1savev2_adam_conv3d_5_kernel_v_read_readvariableop3
/savev2_adam_conv3d_5_bias_v_read_readvariableop;
7savev2_adam_conv_lstm2d_36_kernel_v_read_readvariableopE
Asavev2_adam_conv_lstm2d_36_recurrent_kernel_v_read_readvariableop9
5savev2_adam_conv_lstm2d_36_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:07savev2_batch_normalization_36_gamma_read_readvariableop6savev2_batch_normalization_36_beta_read_readvariableop=savev2_batch_normalization_36_moving_mean_read_readvariableopAsavev2_batch_normalization_36_moving_variance_read_readvariableop*savev2_conv3d_5_kernel_read_readvariableop(savev2_conv3d_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_conv_lstm2d_36_kernel_read_readvariableop:savev2_conv_lstm2d_36_recurrent_kernel_read_readvariableop.savev2_conv_lstm2d_36_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop>savev2_adam_batch_normalization_36_gamma_m_read_readvariableop=savev2_adam_batch_normalization_36_beta_m_read_readvariableop1savev2_adam_conv3d_5_kernel_m_read_readvariableop/savev2_adam_conv3d_5_bias_m_read_readvariableop7savev2_adam_conv_lstm2d_36_kernel_m_read_readvariableopAsavev2_adam_conv_lstm2d_36_recurrent_kernel_m_read_readvariableop5savev2_adam_conv_lstm2d_36_bias_m_read_readvariableop>savev2_adam_batch_normalization_36_gamma_v_read_readvariableop=savev2_adam_batch_normalization_36_beta_v_read_readvariableop1savev2_adam_conv3d_5_kernel_v_read_readvariableop/savev2_adam_conv3d_5_bias_v_read_readvariableop7savev2_adam_conv_lstm2d_36_kernel_v_read_readvariableopAsavev2_adam_conv_lstm2d_36_recurrent_kernel_v_read_readvariableop5savev2_adam_conv_lstm2d_36_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :: : : : : :?: ?:?: : : : : ::?: ?:?: : : ::?: ?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :0,
*
_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?:-)
'
_output_shapes
: ?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :0,
*
_output_shapes
: : 

_output_shapes
::-)
'
_output_shapes
:?:-)
'
_output_shapes
: ?:!

_output_shapes	
:?: 

_output_shapes
: : 

_output_shapes
: :0,
*
_output_shapes
: : 

_output_shapes
::-)
'
_output_shapes
:?:-)
'
_output_shapes
: ?:!

_output_shapes	
:?:

_output_shapes
: 
??
?
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_100972

inputs

states
states_18
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?x
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2·?]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2??]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*/
_output_shapes
:?????????@@G
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2??]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2?̯]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*/
_output_shapes
:?????????@@ _
mulMulinputsdropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@c
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@c
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@c
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@c
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ c
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ c
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ c
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype0?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
convolutionConv2Dmul:z:0split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
t
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
convolution_1Conv2D	mul_1:z:0split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
convolution_2Conv2D	mul_2:z:0split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
convolution_3Conv2D	mul_3:z:0split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
convolution_4Conv2D	mul_4:z:0split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_5Conv2D	mul_5:z:0split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_6Conv2D	mul_6:z:0split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_7Conv2D	mul_7:z:0split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?_
Mul_8Muladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????@@ \
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ t
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ f
mul_10Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????@@ t
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ Q
TanhTanh	add_4:z:0*
T0*/
_output_shapes
:?????????@@ d
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*/
_output_shapes
:?????????@@ `
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*/
_output_shapes
:?????????@@ t
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????@@ f
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ S
Tanh_1Tanh	add_5:z:0*
T0*/
_output_shapes
:?????????@@ h
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ a
IdentityIdentity
mul_13:z:0^NoOp*
T0*/
_output_shapes
:?????????@@ c

Identity_1Identity
mul_13:z:0^NoOp*
T0*/
_output_shapes
:?????????@@ b

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:?????????@@ ?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????@@:?????????@@ :?????????@@ : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????@@ 
 
_user_specified_namestates:WS
/
_output_shapes
:?????????@@ 
 
_user_specified_namestates
?
?
/__inference_conv_lstm2d_36_layer_call_fn_102864
inputs_0"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_100788?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????@@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
<
_output_shapes*
(:&??????????????????@@
"
_user_specified_name
inputs/0
?
?
 conv_lstm2d_36_while_cond_102288:
6conv_lstm2d_36_while_conv_lstm2d_36_while_loop_counter@
<conv_lstm2d_36_while_conv_lstm2d_36_while_maximum_iterations$
 conv_lstm2d_36_while_placeholder&
"conv_lstm2d_36_while_placeholder_1&
"conv_lstm2d_36_while_placeholder_2&
"conv_lstm2d_36_while_placeholder_3:
6conv_lstm2d_36_while_less_conv_lstm2d_36_strided_sliceR
Nconv_lstm2d_36_while_conv_lstm2d_36_while_cond_102288___redundant_placeholder0R
Nconv_lstm2d_36_while_conv_lstm2d_36_while_cond_102288___redundant_placeholder1R
Nconv_lstm2d_36_while_conv_lstm2d_36_while_cond_102288___redundant_placeholder2R
Nconv_lstm2d_36_while_conv_lstm2d_36_while_cond_102288___redundant_placeholder3!
conv_lstm2d_36_while_identity
?
conv_lstm2d_36/while/LessLess conv_lstm2d_36_while_placeholder6conv_lstm2d_36_while_less_conv_lstm2d_36_strided_slice*
T0*
_output_shapes
: i
conv_lstm2d_36/while/IdentityIdentityconv_lstm2d_36/while/Less:z:0*
T0
*
_output_shapes
: "G
conv_lstm2d_36_while_identity&conv_lstm2d_36/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????@@ :?????????@@ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
:
?p
?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_103147
inputs_08
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whileh

zeros_like	ZerosLikeinputs_0*
T0*<
_output_shapes*
(:&??????????????????@@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????@@j
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    ?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ?
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*<
_output_shapes*
(:&??????????????????@@?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @      ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@*
shrink_axis_maskW
ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@U
ones_like_1/ShapeShapeconvolution:output:0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ r
mulMulstrided_slice_1:output:0ones_like:output:0*
T0*/
_output_shapes
:?????????@@t
mul_1Mulstrided_slice_1:output:0ones_like:output:0*
T0*/
_output_shapes
:?????????@@t
mul_2Mulstrided_slice_1:output:0ones_like:output:0*
T0*/
_output_shapes
:?????????@@t
mul_3Mulstrided_slice_1:output:0ones_like:output:0*
T0*/
_output_shapes
:?????????@@r
mul_4Mulconvolution:output:0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_5Mulconvolution:output:0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_6Mulconvolution:output:0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_7Mulconvolution:output:0ones_like_1:output:0*
T0*/
_output_shapes
:?????????@@ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype0?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
convolution_1Conv2Dmul:z:0split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
v
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
convolution_2Conv2D	mul_1:z:0split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
convolution_3Conv2D	mul_2:z:0split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
convolution_4Conv2D	mul_3:z:0split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
convolution_5Conv2D	mul_4:z:0split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_6Conv2D	mul_5:z:0split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_7Conv2D	mul_6:z:0split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_8Conv2D	mul_7:z:0split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?_
Mul_8Muladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????@@ \
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ t
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ r
mul_10Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????@@ t
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ Q
TanhTanh	add_4:z:0*
T0*/
_output_shapes
:?????????@@ d
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*/
_output_shapes
:?????????@@ `
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*/
_output_shapes
:?????????@@ t
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????@@ f
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ S
Tanh_1Tanh	add_5:z:0*
T0*/
_output_shapes
:?????????@@ h
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_103007*
condR
while_cond_103006*[
output_shapesJ
H: : : : :?????????@@ :?????????@@ : : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????@   @       ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????@@ *
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????@@ *
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????@@ s
IdentityIdentitytranspose_1:y:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ ?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????@@: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:f b
<
_output_shapes*
(:&??????????????????@@
"
_user_specified_name
inputs/0
?	
?
7__inference_batch_normalization_36_layer_call_fn_104205

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_101541?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????@@ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????@@ 
 
_user_specified_nameinputs
?
?
/__inference_conv_lstm2d_36_layer_call_fn_102897

inputs"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????@@ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_101943?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*<
_output_shapes*
(:&??????????????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????@@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????@@
 
_user_specified_nameinputs
?
?
while_cond_101738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_101738___redundant_placeholder04
0while_while_cond_101738___redundant_placeholder14
0while_while_cond_101738___redundant_placeholder24
0while_while_cond_101738___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????@@ :?????????@@ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????@@ :51
/
_output_shapes
:?????????@@ :

_output_shapes
: :

_output_shapes
:
??
?
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_104573

inputs
states_0
states_18
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*/
_output_shapes
:?????????@@R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?x
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*/
_output_shapes
:?????????@@O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2???]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*/
_output_shapes
:?????????@@T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?|
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*/
_output_shapes
:?????????@@Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*/
_output_shapes
:?????????@@*
dtype0*
seed???)*
seed2ڢ?]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@{
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@w
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*/
_output_shapes
:?????????@@I
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*/
_output_shapes
:?????????@@ T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2???]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2ρ?]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*/
_output_shapes
:?????????@@ T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?~
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*/
_output_shapes
:?????????@@ S
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*/
_output_shapes
:?????????@@ *
dtype0*
seed???)*
seed2??
]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@@ {
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@@ w
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*/
_output_shapes
:?????????@@ _
mulMulinputsdropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@c
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@c
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@c
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@e
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ e
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ e
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ e
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype0?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype0?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split?
convolutionConv2Dmul:z:0split:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
t
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????@@ ?
convolution_1Conv2D	mul_1:z:0split:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????@@ ?
convolution_2Conv2D	mul_2:z:0split:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????@@ ?
convolution_3Conv2D	mul_3:z:0split:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????@@ ?
convolution_4Conv2D	mul_4:z:0split_1:output:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_5Conv2D	mul_5:z:0split_1:output:1*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_6Conv2D	mul_6:z:0split_1:output:2*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
convolution_7Conv2D	mul_7:z:0split_1:output:3*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????@@ J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?_
Mul_8Muladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????@@ \
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????@@ t
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????@@ e
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????@@ f
mul_10Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????@@ t
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????@@ Q
TanhTanh	add_4:z:0*
T0*/
_output_shapes
:?????????@@ d
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*/
_output_shapes
:?????????@@ `
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*/
_output_shapes
:?????????@@ t
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????@@ L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????@@ f
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????@@ ^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????@@ V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????@@ S
Tanh_1Tanh	add_5:z:0*
T0*/
_output_shapes
:?????????@@ h
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*/
_output_shapes
:?????????@@ a
IdentityIdentity
mul_13:z:0^NoOp*
T0*/
_output_shapes
:?????????@@ c

Identity_1Identity
mul_13:z:0^NoOp*
T0*/
_output_shapes
:?????????@@ b

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:?????????@@ ?
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????@@:?????????@@ :?????????@@ : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????@@ 
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????@@ 
"
_user_specified_name
states/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
P
input_6E
serving_default_input_6:0&??????????????????@@[
tf.math.multiply_5E
StatefulPartitionedCall:0&??????????????????@@tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
[__call__
*\&call_and_return_all_conditional_losses
]_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
(
!	keras_api"
_tf_keras_layer
?
"iter

#beta_1

$beta_2
	%decay
&learning_ratemMmNmOmP'mQ(mR)mSvTvUvVvW'vX(vY)vZ"
	optimizer
_
'0
(1
)2
3
4
5
6
7
8"
trackable_list_wrapper
Q
'0
(1
)2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
?
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
	regularization_losses
[__call__
]_default_save_signature
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
,
dserving_default"
signature_map
?

'kernel
(recurrent_kernel
)bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

3states
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:( 2batch_normalization_36/gamma
):' 2batch_normalization_36/beta
2:0  (2"batch_normalization_36/moving_mean
6:4  (2&batch_normalization_36/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
-:+ 2conv3d_5/kernel
:2conv3d_5/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.?2conv_lstm2d_36/kernel
::8 ?2conv_lstm2d_36/recurrent_kernel
": ?2conv_lstm2d_36/bias
.
0
1"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
'
C0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
/	variables
0trainable_variables
1regularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Itotal
	Jcount
K	variables
L	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
I0
J1"
trackable_list_wrapper
-
K	variables"
_generic_user_object
/:- 2#Adam/batch_normalization_36/gamma/m
.:, 2"Adam/batch_normalization_36/beta/m
2:0 2Adam/conv3d_5/kernel/m
 :2Adam/conv3d_5/bias/m
5:3?2Adam/conv_lstm2d_36/kernel/m
?:= ?2&Adam/conv_lstm2d_36/recurrent_kernel/m
':%?2Adam/conv_lstm2d_36/bias/m
/:- 2#Adam/batch_normalization_36/gamma/v
.:, 2"Adam/batch_normalization_36/beta/v
2:0 2Adam/conv3d_5/kernel/v
 :2Adam/conv3d_5/bias/v
5:3?2Adam/conv_lstm2d_36/kernel/v
?:= ?2&Adam/conv_lstm2d_36/recurrent_kernel/v
':%?2Adam/conv_lstm2d_36/bias/v
?2?
(__inference_model_5_layer_call_fn_101498
(__inference_model_5_layer_call_fn_102156
(__inference_model_5_layer_call_fn_102179
(__inference_model_5_layer_call_fn_102048?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_model_5_layer_call_and_return_conditional_losses_102452
C__inference_model_5_layer_call_and_return_conditional_losses_102853
C__inference_model_5_layer_call_and_return_conditional_losses_102075
C__inference_model_5_layer_call_and_return_conditional_losses_102102?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_100588input_6"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_conv_lstm2d_36_layer_call_fn_102864
/__inference_conv_lstm2d_36_layer_call_fn_102875
/__inference_conv_lstm2d_36_layer_call_fn_102886
/__inference_conv_lstm2d_36_layer_call_fn_102897?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_103147
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_103525
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_103775
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_104153?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
7__inference_batch_normalization_36_layer_call_fn_104166
7__inference_batch_normalization_36_layer_call_fn_104179
7__inference_batch_normalization_36_layer_call_fn_104192
7__inference_batch_normalization_36_layer_call_fn_104205?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_104223
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_104241
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_104259
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_104277?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_conv3d_5_layer_call_fn_104286?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv3d_5_layer_call_and_return_conditional_losses_104297?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_102133input_6"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_conv_lstm_cell_39_layer_call_fn_104314
2__inference_conv_lstm_cell_39_layer_call_fn_104331?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_104420
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_104573?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
!__inference__wrapped_model_100588?	'()E?B
;?8
6?3
input_6&??????????????????@@
? "\?Y
W
tf.math.multiply_5A?>
tf.math.multiply_5&??????????????????@@?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_104223?Z?W
P?M
G?D
inputs8???????????????????????????????????? 
p 
? "L?I
B??
08???????????????????????????????????? 
? ?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_104241?Z?W
P?M
G?D
inputs8???????????????????????????????????? 
p
? "L?I
B??
08???????????????????????????????????? 
? ?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_104259?H?E
>?;
5?2
inputs&??????????????????@@ 
p 
? ":?7
0?-
0&??????????????????@@ 
? ?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_104277?H?E
>?;
5?2
inputs&??????????????????@@ 
p
? ":?7
0?-
0&??????????????????@@ 
? ?
7__inference_batch_normalization_36_layer_call_fn_104166?Z?W
P?M
G?D
inputs8???????????????????????????????????? 
p 
? "??<8???????????????????????????????????? ?
7__inference_batch_normalization_36_layer_call_fn_104179?Z?W
P?M
G?D
inputs8???????????????????????????????????? 
p
? "??<8???????????????????????????????????? ?
7__inference_batch_normalization_36_layer_call_fn_104192H?E
>?;
5?2
inputs&??????????????????@@ 
p 
? "-?*&??????????????????@@ ?
7__inference_batch_normalization_36_layer_call_fn_104205H?E
>?;
5?2
inputs&??????????????????@@ 
p
? "-?*&??????????????????@@ ?
D__inference_conv3d_5_layer_call_and_return_conditional_losses_104297?D?A
:?7
5?2
inputs&??????????????????@@ 
? ":?7
0?-
0&??????????????????@@
? ?
)__inference_conv3d_5_layer_call_fn_104286yD?A
:?7
5?2
inputs&??????????????????@@ 
? "-?*&??????????????????@@?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_103147?'()W?T
M?J
<?9
7?4
inputs/0&??????????????????@@

 
p 

 
? ":?7
0?-
0&??????????????????@@ 
? ?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_103525?'()W?T
M?J
<?9
7?4
inputs/0&??????????????????@@

 
p

 
? ":?7
0?-
0&??????????????????@@ 
? ?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_103775?'()P?M
F?C
5?2
inputs&??????????????????@@

 
p 

 
? ":?7
0?-
0&??????????????????@@ 
? ?
J__inference_conv_lstm2d_36_layer_call_and_return_conditional_losses_104153?'()P?M
F?C
5?2
inputs&??????????????????@@

 
p

 
? ":?7
0?-
0&??????????????????@@ 
? ?
/__inference_conv_lstm2d_36_layer_call_fn_102864?'()W?T
M?J
<?9
7?4
inputs/0&??????????????????@@

 
p 

 
? "-?*&??????????????????@@ ?
/__inference_conv_lstm2d_36_layer_call_fn_102875?'()W?T
M?J
<?9
7?4
inputs/0&??????????????????@@

 
p

 
? "-?*&??????????????????@@ ?
/__inference_conv_lstm2d_36_layer_call_fn_102886?'()P?M
F?C
5?2
inputs&??????????????????@@

 
p 

 
? "-?*&??????????????????@@ ?
/__inference_conv_lstm2d_36_layer_call_fn_102897?'()P?M
F?C
5?2
inputs&??????????????????@@

 
p

 
? "-?*&??????????????????@@ ?
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_104420?'()???
???
(?%
inputs?????????@@
[?X
*?'
states/0?????????@@ 
*?'
states/1?????????@@ 
p 
? "???
??~
%?"
0/0?????????@@ 
U?R
'?$
0/1/0?????????@@ 
'?$
0/1/1?????????@@ 
? ?
M__inference_conv_lstm_cell_39_layer_call_and_return_conditional_losses_104573?'()???
???
(?%
inputs?????????@@
[?X
*?'
states/0?????????@@ 
*?'
states/1?????????@@ 
p
? "???
??~
%?"
0/0?????????@@ 
U?R
'?$
0/1/0?????????@@ 
'?$
0/1/1?????????@@ 
? ?
2__inference_conv_lstm_cell_39_layer_call_fn_104314?'()???
???
(?%
inputs?????????@@
[?X
*?'
states/0?????????@@ 
*?'
states/1?????????@@ 
p 
? "{?x
#? 
0?????????@@ 
Q?N
%?"
1/0?????????@@ 
%?"
1/1?????????@@ ?
2__inference_conv_lstm_cell_39_layer_call_fn_104331?'()???
???
(?%
inputs?????????@@
[?X
*?'
states/0?????????@@ 
*?'
states/1?????????@@ 
p
? "{?x
#? 
0?????????@@ 
Q?N
%?"
1/0?????????@@ 
%?"
1/1?????????@@ ?
C__inference_model_5_layer_call_and_return_conditional_losses_102075?	'()M?J
C?@
6?3
input_6&??????????????????@@
p 

 
? ":?7
0?-
0&??????????????????@@
? ?
C__inference_model_5_layer_call_and_return_conditional_losses_102102?	'()M?J
C?@
6?3
input_6&??????????????????@@
p

 
? ":?7
0?-
0&??????????????????@@
? ?
C__inference_model_5_layer_call_and_return_conditional_losses_102452?	'()L?I
B??
5?2
inputs&??????????????????@@
p 

 
? ":?7
0?-
0&??????????????????@@
? ?
C__inference_model_5_layer_call_and_return_conditional_losses_102853?	'()L?I
B??
5?2
inputs&??????????????????@@
p

 
? ":?7
0?-
0&??????????????????@@
? ?
(__inference_model_5_layer_call_fn_101498?	'()M?J
C?@
6?3
input_6&??????????????????@@
p 

 
? "-?*&??????????????????@@?
(__inference_model_5_layer_call_fn_102048?	'()M?J
C?@
6?3
input_6&??????????????????@@
p

 
? "-?*&??????????????????@@?
(__inference_model_5_layer_call_fn_102156?	'()L?I
B??
5?2
inputs&??????????????????@@
p 

 
? "-?*&??????????????????@@?
(__inference_model_5_layer_call_fn_102179?	'()L?I
B??
5?2
inputs&??????????????????@@
p

 
? "-?*&??????????????????@@?
$__inference_signature_wrapper_102133?	'()P?M
? 
F?C
A
input_66?3
input_6&??????????????????@@"\?Y
W
tf.math.multiply_5A?>
tf.math.multiply_5&??????????????????@@