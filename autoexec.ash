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
#	- sets Bitrates of 1080p, 1080p Superview, 2.7K, 2.7K Superview to 100MB/s

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

#Bitrate mods on 1.10.7 to enable high bitrates
#1080p all FR
writel 0xA06D4C7C 0x42C80000 #60P 16:9
writel 0xA06D4D3C 0x42C80000 #30P 16:9
writel 0xA06D530C 0x42C80000 #48P 16:9
writel 0xA06D533C 0x42C80000 #24P 16:9
writel 0xA06D55AC 0x42C80000 #120P 16:9
#1080p Superview
writel 0xA06D58DC 0x42C80000 #90P 16:9 super
writel 0xA06D4CAC 0x42C80000 #60P 16:9 super
writel 0xA06D4D6C 0x42C80000 #30P 16:9 super

#2.7K all framerates
writel 0xA06D49AC 0x42C80000 
writel 0xA06D49DC 0x42C80000 
writel 0xA06D4A0C 0x42C80000 
writel 0xA06D4A3C 0x42C80000 

#2.7k Superview
writel 0xA06D4A6C 0x42C80000 

