// Create context menu item
browser.contextMenus.create({
  id: "count-words",
  title: "Word Count",
  contexts: ["selection"]
});

// Add listener for when menu item is clicked
browser.contextMenus.onClicked.addListener((info, tab) => {
  if (info.menuItemId === "count-words" && info.selectionText) {
    const text = info.selectionText;
    const wordCount = text.trim().split(/\s+/).length;
    const charCount = text.length;
    
    // Show results in an alert
    browser.tabs.executeScript(tab.id, {
      code: `alert("Word count: ${wordCount}\\nCharacter count: ${charCount}")`
    });
  }
});

