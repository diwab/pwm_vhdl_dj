# 🎶 PWM DJ – The Digital Beatboxer

This is a simulation-only project that generates simple electronic "beats" using **PWM (Pulse Width Modulation)** in **VHDL**, and visualizes how they would behave in a real circuit using **ModelSim**.

> Think of it like a tiny digital music machine — but made from switching waveforms instead of speakers!

---

## 🧠 What It Does

- Simulates a PWM signal using VHDL
- Changes the **duty cycle** of the signal to create different "tones"
- Runs a simple **testbench** to demonstrate how the PWM changes over time
- Optionally exports waveforms that can be used in **PLECS** to simulate filtering and power electronics


---

## ▶️ How to Run the Simulation (ModelSim)

### 🧰 Requirements:
- [ModelSim (Intel Starter Edition)](https://fpgasoftware.intel.com/)
- [Visual Studio Code](https://code.visualstudio.com/)

### 🚀 Steps:
1. **Open the project folder in VS Code**
2. Press `Ctrl + Shift + B` to run the simulation
3. You’ll see the ModelSim terminal launch and run your VHDL code
4. To view the waveform:
   - You can modify the `tasks.json` or use the ModelSim GUI manually
   - Or export a `.vcd` file and open it in GTKWave

---

## 📊 What You’ll See

The simulation shows:
- A **clock** signal (used to drive everything)
- A **duty cycle** signal that changes from 50% → 25% → 75%
- A **pwm_out** signal that turns on/off quickly based on the duty

---

## ⚡ Bonus (Optional for Power Electronics Fans)

You can export the `pwm_out` signal to a `.vcd` or `.csv` file, and use it in **PLECS** to:
- Simulate a low-pass filter (like in audio amps)
- Add a buck converter or switching power stage
- Analyze losses, ripple, and smoothing

---

## 📬 Questions?

Feel free to contact me or contribute if you’d like to expand this project with:
- Multiple PWM channels
- Beat sequencers
- Realistic power converter circuits

Let the beats begin! 🎛️🥁🎵
