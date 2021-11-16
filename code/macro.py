from talon import actions, Module, speech_system
import os

mod = Module()

macro = []
recording = False

cwd = os.path.dirname(os.path.realpath(__file__))
macro_file = os.path.join(cwd, "../misc/macros.txt")

@mod.action_class
class Actions:
    def macro_record():
        """record a new macro"""
        global macro
        global recording

        macro = []
        recording = True

    def macro_stop():
        """stop recording"""
        global recording
        recording = False

        # :-1 because we don't want to replay `macro play`
        converted_macro = [str(element) for element in macro[:-1]]

        # print macro words to file
        f = open(macro_file, "a")
        f.write("[")
        for m in converted_macro:
            f.write(m + ",")
        f.write("]")
        f.write("\n")
        f.close()

    def macro_play():
        """player recorded macro"""
        actions.user.macro_stop()

        # :-1 because we don't want to replay `macro play`
        for words in macro[:-1]:
            print(words)
            actions.mimic(words)



def fn(d):
    if not recording:
        return

    if "parsed" not in d:
        return

    macro.append(d["parsed"]._unmapped)


speech_system.register("pre:phrase", fn)



     

     