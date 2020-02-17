#RECOGNITION TASK
#DELAYED RECOGNITION PHASE
scenario = "Recognition Task Delayed Recognition";

default_font_size = 20;
default_font = "Arial";
default_text_color = 0,0,0;
default_background_color = 255,255,255;
active_buttons = 3;
button_codes = 1, 2, 3; #1=yes 2=no 3=enter
response_matching = simple_matching;
stimulus_properties = trail_phase, string, cue, string, cue_durations, number, cuestatus, string, target, string, ITT, number, trial_number, number;
event_code_delimiter = ",";
pcl_file = "RecognitionTaskDelayedRecognition.pcl";
begin;

#INSTRUCTIONS

trial {
 trial_duration = forever;
 trial_type = specific_response;
 terminator_button = 3; #enter

 stimulus_event {
  picture {
   background_color = 255, 255, 255;

   text {background_color = 255,255,255; font_color = 0,0,139,200; font = "Arial";
     caption = "A következő részben a korábban látott szavak mellett új szavakat is látni fog.\nArra kérjük Önt, hogy gombnyomással jelezze, 
hogy az adott szót látta-e korábban (RÉGI) vagy sem (ÚJ).\nA RÉGI szavak esetén nyomja meg a BAL nyíl gombot.\nAz ÚJ szavak esetén nyomja meg a JOBB nyíl gombot.\nA továbblépéshez nyomja meg az ENTER gombot.";
    } instruction1_text;
    x = 0; y = 0;
  }instruction1_pic;
  target_button = 3;
 }instruction1_event;
}instruction1_trial;

trial {
 trial_duration = forever;
 trial_type = specific_response;
 terminator_button = 3; #enter

 stimulus_event {
  picture {
   background_color = 255,255,255;

   text {background_color = 255,255,255; font_color = 0,0,139,200; font = "Arial";
     caption = "A következő részben pár gyakorló szót fog látni.\nA RÉGI szavak esetén nyomja meg a BAL nyíl gombot.\nAz ÚJ szavak esetén nyomja meg a JOBB nyíl gombot.\nA továbblépéshez nyomja meg az ENTER gombot.";
    } instruction2_text;
    x = 0; y = 0;
  }instruction2_pic;
  target_button = 3;
 }instruction2_event;
}instruction2_trial;

#PRACTICE TRIAL

trial{
 trial_duration = 3000;

 stimulus_event {
  picture {
   background_color = 255,255,255;
   
   text {background_color = 255,255,255; font_color = 0,0,139,200; font_size = 100; font = "Arial";
    caption = "PRACTICE";
   } practice_text;
    x = 0; y = 0;
    bitmap { filename = ""; preload = false; } buttons_p;
                        x = 0; y = -300;
  }practice_pic;
  target_button = 1,2;
 }practice_event;
}practice_trial;

#INSTRUCTION

trial {
 trial_duration = forever;
 trial_type = specific_response;
 terminator_button = 3; #enter

 stimulus_event {
  picture {
   background_color = 255,255,255;

   text {background_color = 255,255,255; font_color = 0,0,139,200; font = "Arial";
     caption = "Ha készen áll a szavakra, nyomja meg az ENTER gombot.";
    } instruction3_text;
    x = 0; y = 0;
  }instruction3_pic;
  target_button = 3;
 }instruction3_event;
}instruction3_trial;

#GENERAL TRIAL

trial{
 trial_duration = 3000;
 stimulus_event {
  picture {
   background_color = 255,255,255;
   
   text {background_color = 255,255,255; font_color = 0,0,139,200; font_size = 100; font = "Arial";
    caption = "WORDS";
   } word_recognition_text;
    x = 0; y = 0;
   bitmap { filename = ""; preload = false; } buttons_t;
                        x = 0; y = -300;
  }word_recognition_pic;
  target_button = 1, 2;
 }word_recognition_event;
}word_recognition_trial;

#THANKS

trial{
 trial_duration = forever;
 trial_type = specific_response;
 terminator_button = 3; #enter

 stimulus_event {
  picture {
   background_color = 255,255,255;

   text { font_color = 0,0,139,200;
    caption = "Köszönjük a figyelmét, ez a feladat vége!\nA kilépéshez nyomja meg az ENTER gombot.";
    } thanks_text;
    x = 0; y = 0;
   } thanks_pic;
   target_button = 3;
  } thanks_event;
 } thanks_trial;

#ISI

trial {
 trial_duration = 500;
 trial_type = fixed;
 
 stimulus_event {
  picture {
   background_color = 255, 255, 255;
   
   text {background_color = 255,255,255; font_color = 0,0,139,200; font = "Arial"; font_size = 40;
     caption = "+";
    } isi_text;
    x = 0; y = 0;
  }isi_pic;
 }isi_event;
}isi_trial;