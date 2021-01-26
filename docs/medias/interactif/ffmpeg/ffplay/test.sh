ffplay -f lavfi  
         "amovie=timecode.mp4,asplit=3[sv][eb][av];
          [sv]showvolume=b=4:w=720:h=68[sv-v];
          [eb]ebur128=video=1:size=720x540:meter=18[eb-v][out1];
          [av]avectorscope=s=720x540:zoom=1.3:rc=2:gc=200:bc=10:rf=1:gf=8:bf=7[av-v];
          [sv-v][eb-v][av-v]vstack=3[1c];
          movie=timecode.mp4,split=4[v][wf][wfc][vs];
          [wf]waveform=m=1:d=0:r=0:c=7[wf-vus];
          [wf-vus][v]scale2ref=iw:1220-ih[wf-va][sig];
          [wf-va]setsar=1[wf-v];
          [wfc]waveform=m=0:d=0:r=0:c=7,scale=610x610,setsar=1[wfc-v];
          [vs]vectorscope=m=color3:g=color,scale=610x610,setsar=1[vs-v];
          [sig][wf-v]vstack[2c];
          [wfc-v][vs-v]vstack[3c];
          [1c][2c][3c]hstack=3,scale=1280:-1[out0]"
