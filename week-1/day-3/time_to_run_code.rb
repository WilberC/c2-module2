def exec_time(proc)
  init_time = Time.now
  proc
  Time.now - init_time
end