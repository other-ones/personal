import sys
sys.path.insert(0, './packages')
from diffusers.utils.import_utils import is_xformers_available
print(is_xformers_available())