

# Throws the error  below when running container for the first time with this command  `docker run  -i -p 8089:80 -v /home/joshij/galaxy_storage/:/export/  galaxy_docker:latest > galaxy_start_2.log 2>&1` 


```

Checking /export...
Traceback (most recent call last):
  File "/tool_deps/_conda/lib/python3.12/shutil.py", line 847, in move
    os.rename(src, real_dst)
OSError: [Errno 18] Invalid cross-device link: '/galaxy/database' -> '/export/galaxy/database'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/local/bin/export_user_files.py", line 146, in <module>
    change_path( os.path.join(GALAXY_ROOT_DIR, 'database') )
  File "/usr/local/bin/export_user_files.py", line 31, in change_path
    shutil.move( src, dest )
  File "/tool_deps/_conda/lib/python3.12/shutil.py", line 863, in move
    copytree(src, real_dst, copy_function=copy_function,
  File "/tool_deps/_conda/lib/python3.12/shutil.py", line 600, in copytree
    return _copytree(entries=entries, src=src, dst=dst, symlinks=symlinks,
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/tool_deps/_conda/lib/python3.12/shutil.py", line 554, in _copytree
    raise Error(errors)
shutil.Error: [('/galaxy/database/gravity/supervisor/supervisor.sock', '/export/galaxy/database/gravity/supervisor/supervisor.sock', "[Errno 6] No such device or address: '/galaxy/database/gravity/supervisor/supervisor.sock'")]
Installing optional dependencies in galaxy virtual environment...
/galaxy/lib/galaxy/dependencies/__init__.py:72: FutureWarning: The behavior of this method will change in future versions. Use specific 'len(elem)' or 'elem is not None' test instead.
  if plugins_elem:

[notice] A new release of pip is available: 25.0.1 -> 25.2
[notice] To update, run: pip install --upgrade pip
Channels:
 - iuc
 - conda-forge
 - bioconda
 - defaults
Platform: linux-64
Collecting package metadata (repodata.json): ...working... done
Solving environment: ...working... done

```

# When running the command `docker run  -i -p 8089:80 -v /home/joshij/galaxy_storage/:/export/  galaxy_docker:latest > galaxy_start_2.log 2>&1` second time, it throws the error `Error: Invalid value for '--state-dir': Directory '/galaxy/database/gravity' is not writable.` and Galaxy instance stuck and does not show the home page. Detailed log is in `galaxy_start_2.log` file.  


