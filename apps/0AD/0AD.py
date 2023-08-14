from talon import Module, Context, ctrl, actions
from typing import Dict

mod = Module()

apps = mod.apps
# apps.zeroAD = "0 A.D."
apps.zeroAD = """
os: mac
and app.bundle: com.wildfiregames.0ad
"""

mod.mode("game", desc="game commands only")

@mod.capture(rule="((north | south) [(east | west)] | east | west)")
def arrow_input(m) -> Dict[str, bool]:
    """
    Matches on a basic compass direction to return which keys should
    be pressed.
    """

    return {
        "up": "north" in m,
        "down": "south" in m,
        "right": "east" in m,
        "left": "west" in m
    }

@mod.action_class
class Actions:
    def select_all_on_screen(button: int = 0, mod1: str = None, mod2: str = None):
        """Select everything on screen by clicking and dragging"""
        
        initial_pos = ctrl.mouse_pos()

        # hold modifier 
        if mod1 is not None: actions.key(f"{mod1}:down")
        if mod2 is not None: actions.key(f"{mod2}:down")
        actions.sleep("16ms")

        # click and drag    
        ctrl.mouse_move(40, 40)
        actions.sleep("16ms")
        ctrl.mouse_click(button=0, down=True)
        actions.sleep("16ms")
        ctrl.mouse_move(41, 40)
        actions.sleep("16ms")
        ctrl.mouse_move(2500, 1400)
        actions.sleep("16ms")
        ctrl.mouse_click(button=0, up=True)

        # release modifier 
        actions.sleep("16ms")
        if mod1 is not None: actions.key(f"{mod1}:up")
        if mod2 is not None: actions.key(f"{mod2}:up")

        # return to initial position 
        ctrl.mouse_move(initial_pos[0], initial_pos[1])


    def arrow_keydown(direction: Dict[str, bool]):
        "Holds down the keys corresponding to the given direction"
        for key, pressed in direction.items():
            if pressed:
                actions.key(f"{key}:down")

    def arrow_keyup(direction: Dict[str, bool]):
        "Releases the keys corresponding to the given direction"
        for key, pressed in direction.items():
            if pressed:
                actions.key(f"{key}:up")   

    def arrow_press(direction: Dict[str, bool]):
        "Press the keys corresponding to the given direction"
        for key, pressed in direction.items():
            if pressed:
                actions.key(f"{key}:down")
        actions.sleep("200ms")
        for key, pressed in direction.items():
            if pressed:
                actions.key(f"{key}:up")

    def stop_moving():
        """Release all arrow keys"""
        actions.key("left:up")  
        actions.key("right:up")  
        actions.key("up:up")  
        actions.key("down:up")  

    def click_position(x: int, y: int):
        """Click coordinates on screen"""
        initial_pos = ctrl.mouse_pos()

        ctrl.mouse_move(x, y)
        actions.sleep("16ms")
        ctrl.mouse_click(button=0)

        # return to initial position 
        # ctrl.mouse_move(initial_pos[0], initial_pos[1])