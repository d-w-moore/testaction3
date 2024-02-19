ARG python_version
FROM python:${python_version}
#CMD python -V
CMD python -c "import os,pwd; id=os.getuid(); print('id =',id); print('name = ',pwd.getpwuid(id).pw_name)"
