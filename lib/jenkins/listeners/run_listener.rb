
module Jenkins
  module Listeners
    class RunListener
      include Jenkins::Model::Describable

      describe_as Java.jenkins.listeners.RunListener

       # Runs before the {@link SCM#checkout(AbstractBuild, Launcher, FilePath, BuildListener, File)} runs, and performs a set up.
       # Can contribute additional properties/env vars to the environment.
       #
       # <p>
       # A typical strategy is for implementations to check {@link JobProperty}s and other configuration
       # of the project to determine the environment to inject, which allows you to achieve the equivalent of
       # {@link BuildWrapper}, but without UI.
       #
       # @param build
       #      The build in progress for which an {@link Environment} object is created.
       #      Never null.
       # @param launcher
       #      This launcher can be used to launch processes for this build.
       #      If the build runs remotely, launcher will also run a job on that remote machine.
       #      Never null.
       # @param listener
       #      Can be used to send any message.
       # @return
       #      non-null if the build can continue, null if there was an error
       #      and the build needs to be aborted.
       # @throws IOException
       #      terminates the build abnormally. Hudson will handle the exception
       #      and reports a nice error message.
       # @since 1.409
       #/
       # public Environment setUpEnvironment( AbstractBuild build, Launcher launcher, BuildListener listener ) throws IOException, InterruptedException {
       #   return new Environment() {};
       # }

       def setup(build, launcher, listener)

       end

       # Called when a build is started (i.e. it was in the queue, and will now start running
       # on an executor)
       #
       # @param r
       #      The started build.
       # @param listener
       #      The listener for this build. This can be used to produce log messages, for example,
       #      which becomes a part of the "console output" of this build.
       #/
       def started(run, listener)

       end

       # Called after a build is completed.
       #
       # @param r
       #      The completed build.
       # @param listener
       #      The listener for this build. This can be used to produce log messages, for example,
       #      which becomes a part of the "console output" of this build. But when this method runs,
       #      the build is considered completed, so its status cannot be changed anymore.
       #/
       def completed(run, listener)

       end

       # Called after a build is moved to the {@link Run.State#COMPLETED} state.
       #
       # <p>
       # At this point, all the records related to a build is written down to the disk. As such,
       # {@link TaskListener} is no longer available. This happens later than {@link #onCompleted(Run, TaskListener)}.
       #/
       def finalized(run)

       end

       # Called right before a build is going to be deleted.
       #
       # @param r The build.
       #/
       def deleted(run)

       end

    end
  end
end