def anchorize(text)
  url = text.scan(/^.+\s((http+|ftp+|file|smb).*)\s/).flatten[0]
  text.gsub(url, ('<a href="' + url + '">' + url + '</a>'))
end
