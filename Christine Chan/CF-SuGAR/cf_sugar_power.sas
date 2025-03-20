proc power;
   coxreg
      hazardratio = 1.004869 1.009761 1.019617
      rsquare = 0.04322659
      stddev = 45.04611
      power = 0.8 0.85 0.9
      alpha = 0.05
      sides = 2
      eventprob = 0.15 0.3 0.4
      NTOTAL= .
      ;
run;

