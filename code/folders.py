# from .user_settings import get_list_from_csv
# from talon import Module, Context
# from urllib.parse import quote_plus

# mod = Module()
# mod.list("folder", desc="A folder.")


# folder_defaults = {
#     "home directory": "Abbott, Tadro (SI&P, Waite Campus)",
# }



# ctx_win = Context()
# ctx_win.matches = r"""
# os: win
# """

# ctx_win.lists["self.folder"] = get_list_from_csv(
#     "folders_win.csv",
#     headers=("Folder", "Name"),
#     default=folder_defaults,
# )

# ctx_mac = Context()
# ctx_mac.matches = r"""
# os: mac
# """

# ctx_mac.lists["self.folder"] = get_list_from_csv(
#     "folders_mac.csv",
#     headers=("Folder", "Name"),
#     default=folder_defaults,
# )

# @mod.action_class
# class Actions:
#     def open_url(url: str):
#         """Visit the given URL."""
#         webbrowser.open(url)

#     def search_with_search_engine(search_template: str, search_text: str):
#         """Search a search engine for given text"""
#         url = search_template.replace("%s", quote_plus(search_text))
#         webbrowser.open(url)
