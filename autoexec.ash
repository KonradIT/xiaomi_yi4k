#Custom Autoexec.ash for my Yi 4K vlogging camera
#These are some settings and commands I use
#Sources:
#	- https://github.com/irungentoo/Xiaomi_Yi_4k_Camera/
#	- dashcamtalk.com

#Index:
#	- set microphone to external USB
#	- sets audio denoise
#	- deletes .SEC files from sd card
#	- sets microphone channel (on internal)
#	- sets powersave
#	- sets autoknee
#	- sets Auto Exposure
#	- sets Gamma
#	- sets 1080p 16:9 bitrate to 75mb/s

#Sets microphone input: line | mic
t ants audio input mode mic

#Sets denoise setting: on | off
t ants audio denoise on

#Deletes thumbnail files:
t ipc rpc clnt exec1 'rm /tmp/fuse_d/DCIM/*/*SEC'

#Mic input: dual | left | right
#t ants mic_input dual

#Powersave setting 30|60|120:
t ants power_saving on 30

#Autoknee: [0-255]
t imgproc -adj autoknee 128

#AE ON:
t imgproc -ae on

#Gamma value:
t imgproc -adj gamma 128

#Bitrate mods:
writel 0xA06CA5B4 0x42C80000 
writel 0xA06CA5B8 0x3F800000 #lower bound: 1
writel 0xA06CA5BC 0x3F800000 #upper bound: 1

writel 0xA06CAA34 0x42C80000
writel 0xA06CAA38 0x3F800000 #lower bound: 1
writel 0xA06CAA3C 0x3F800000 #upper bound: 1

