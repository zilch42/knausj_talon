from talon import Context, Module, imgui, ui, cron

ctx = Context()
mod = Module()

main_screen = ui.main_screen()


def raise_reminders(m: str):
    global reminder_text
    reminder_text = m
    gui.show()


@imgui.open(
    x=main_screen.x + main_screen.width / 2.6,
    y=main_screen.y + main_screen.height - 50,
)
def gui(gui: imgui.GUI):
    global reminder_text
    gui.text(reminder_text)


@mod.action_class
class Actions:
    def reminder_show(m: str):
        """show reminder popup"""
        gui.hide()
        raise_reminders(m)
        cron.after("5s", lambda: gui.hide())
