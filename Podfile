# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'
use_frameworks!


def shared_pods
    pod 'RxSwift', '~> 4.1.2'
end

target 'MedMe' do

    # UI
    #pod 'SideMenuController', :git => 'https://github.com/rafaelks/SideMenuController.git'
    #pod 'MBProgressHUD', '~> 1.1.0'


    # Authentication SDKs
    #pod 'OAuthSwift'
    #pod '1PasswordExtension'
    #pod 'GoogleSignIn'
    pod 'ChameleonFramework', '~> 2.1.0'

end

target 'Domain' do
    shared_pods
end

target 'Platform' do
    shared_pods
    # Database
    pod 'RealmSwift', '~> 3.6.0'
    pod 'RxRealm', '~> 0.7.5'
end
