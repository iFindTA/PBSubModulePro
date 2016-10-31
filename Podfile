workspace	'PBSubmodulePro.xcworkspace'
project		'PBMainModule/PBMainModule.xcodeproj'

#以下begin&end之间为单个target之间精确指定依赖关系的 link_with多个同时指定（不适用）
#=begin
target	'PBMainModule' do
	platform :ios, '7.0'
	project 'PBMainModule/PBMainModule.xcodeproj'
	 pod 'SDWebImage', '~> 3.7.0'
	 pod 'PBMediator', '~> 0.0.71'
	 pod 'AFNetworking', '~> 3.1.0'
end

target	'PBLoginModule'	do
	platform :ios, '7.0'
	project 'PBLoginModule/PBLoginModule.xcodeproj'
end

target  'PBNetService' do
        platform :ios, '7.0'
        project 'PBNetService/PBNetService.xcodeproj'
         pod 'AFNetworking', '~> 3.1.0'
end

#=end

#以下为Ruby语言定义依赖关系
=begin 貌似有些问题
def shared_pods
    pod 'AFNetworking'
    pod 'PBMediator'

def main_pods
    pod 'SDWebImage', '~> 3.7.0'

target :PBMainModule do
    shared_pods
    main_pods

target :PBLoginModule do
    shared_pods
=end
