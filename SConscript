Import('env')

env.Append(LIBPATH='#/lib')
env.Append(RPATH=[Literal('\\$$ORIGIN')])
env.Append(RPATH=[Literal('\\$$ORIGIN/../lib')])

libmixed_cpu_and_gpu = env.SConscript('libmixed_cpu_and_gpu/SConscript', exports='env')
env.Append(LIBPATH=[libmixed_cpu_and_gpu[0].dir])
env.Append(LIBS=[libmixed_cpu_and_gpu[0].name])

minimal = env.Program('minimal','minimal.cu')

env.Install('#/lib',[libmixed_cpu_and_gpu])
env.Install('#/bin',[minimal])

Clean('#','#/lib')
Clean('#','#/bin')
