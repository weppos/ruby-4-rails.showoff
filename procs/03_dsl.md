!SLIDE center
# Domain Specific Language (DSL)


!SLIDE center
# Ruby and DSL

## Blocks allow you to declare
## instructions in custom languages
## and implement them in Ruby


!SLIDE center
# Example from Capistrano

    @@@ Ruby
    namespace :deploy do
      desc <<-DESC
        Restarts your application.
      DESC
      task :restart, :roles => :app, :except => { :no_release => true } do
        run "touch #{current_path}/tmp/restart.txt"
      end


!SLIDE center
# Example from Whois

    @@@ Ruby
    describe Whois::Client do
      describe "#initialize" do
        it "does not accept zero parameters" do
          expect do
            klass.new
          end.to raise_error(ArgumentError)
        end

        it "accepts a settings parameter" do
          expect do
            klass.new({ :foo => "bar" })
          end.to_not raise_error
        end
      end
    end
