cp /home/twkim/anaconda3/envs/char/lib/python3.9/site-packages/transformers/models/clip/modeling_clip.py assets/modeling_clip.py;
cp /home/twkim/anaconda3/envs/char/lib/python3.9/site-packages/transformers/transformers/modeling_outputs.py assets/modeling_outputs.py;
git add .;
git commit -m "update";
git push origin main;
