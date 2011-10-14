module Jenkins
  class Plugin
    class Proxies
      class RunListener < Java.hudson.listeners.RunListener
        include Jenkins::Plugin::Proxy

        #let's think about this
        def setUpEnvironment(build, launcher, listener)
          @object.setup(import(build), import(launcher), import(listener))
          return BlankEnvironment.new
        end

        def onStarted(r,listener)
          @object.started(import(r), import(listener))
        end

        def onCompleted(r,listener)
          @object.completed(import(r), import(listener))
        end

        def onFinalized(r)
          @object.finalized(import(r))
        end

        def onDeleted(r)
          @object.deleted(import(r))
        end

        class BlankEnvironment < Java.hudson.model.Environment

        end

      end
    end
  end
end
