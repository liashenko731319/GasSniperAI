# main.py
import time
import random

print("[GasSniperAI] Monitoring gas price fluctuations...")
for i in range(5):
    price = random.randint(5, 200)
    print(f"🔍 Detected gas price: {price} gwei")
    time.sleep(1)
