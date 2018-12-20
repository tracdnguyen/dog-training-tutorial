# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

test_user1 = Trainer.create(id: 1, email: 'something@test.com', password: 'valid_password', password_confirmation: 'valid_password')
test_user2 = Trainer.create(id: 2, email: 'anothersomething@test.com', password: 'valid_password', password_confirmation: 'valid_password')
test_user3 = Trainer.create(id: 3, email: 'anotherthing@test.com', password: 'valid_password', password_confirmation: 'valid_password')

Tutorial.create(id: 1, trainer_id: 1, title: 'How To Train Sit', video_link: 'https://www.youtube.com/watch?v=T-i5fhgxCDs&list=PLj0EP3TZbgkJHz5a7-0x0ZWAfyqMLPI0i', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget magna commodo, ornare diam tincidunt, semper orci. Integer ut urna vehicula, suscipit ante at, feugiat enim. Duis ac lacus non nibh placerat scelerisque. Etiam tempus vel elit eget rutrum. Cras tincidunt massa vitae nisi auctor pretium. Praesent id augue tellus. Duis et interdum orci. Nam sem dui, sodales id facilisis in, tempus vel diam. Mauris sodales hendrerit vehicula. Suspendisse ultrices placerat pellentesque. Nulla vehicula sit amet neque quis mollis. Nullam semper mollis risus, nec malesuada risus egestas at. Mauris vel mauris in arcu scelerisque lobortis id id nisi. Sed vulputate enim et tellus venenatis, at vulputate nisi cursus. Vivamus ultricies, ante fermentum sagittis auctor, nunc purus luctus libero, vitae fermentum diam lorem at augue. Cras ut varius quam. Praesent sit amet dapibus lectus. Integer elementum felis augue, eget elementum magna ornare vel. Nam hendrerit vitae dolor nec pretium. Sed ultricies ut purus in ullamcorper. Suspendisse scelerisque lacus malesuada, condimentum tellus ut, vulputate mauris. Suspendisse scelerisque orci sed orci pulvinar, varius blandit lorem lacinia. Etiam ornare mauris ex, vel imperdiet ante rhoncus ac. Vivamus non tortor et ligula interdum egestas sit amet a nunc. Phasellus ultricies mi at risus laoreet, eu rhoncus justo rhoncus. Nullam nec cursus nulla. Sed at nibh id tortor pellentesque feugiat vitae vitae ex. In porttitor urna vel tincidunt aliquam. Integer tincidunt diam lorem, non mattis sapien aliquam id. Sed volutpat sapien vel justo pharetra dictum. Donec porttitor, tellus sed congue dapibus, nisl eros tempor ipsum, et dictum risus quam quis quam. Donec aliquet placerat velit ut maximus. Vestibulum at ullamcorper nulla. Etiam nec lorem at enim sagittis dapibus. In id justo nec enim condimentum egestas. Fusce id lacus porta, rhoncus felis ac, faucibus ligula. Integer vitae vestibulum odio. Praesent et est sed erat congue convallis sed id sapien. Duis posuere consectetur lectus in consectetur. Quisque quis dui eget nisl convallis porttitor et eget felis. Praesent non purus justo.')

Tutorial.create(id: 2, trainer_id: 2, title: 'How To Teach Focus and Name', video_link: 'https://www.youtube.com/watch?v=zYA8Ad_aqBQ&index=2&list=PLj0EP3TZbgkJHz5a7-0x0ZWAfyqMLPI0i', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget magna commodo, ornare diam tincidunt, semper orci. Integer ut urna vehicula, suscipit ante at, feugiat enim. Duis ac lacus non nibh placerat scelerisque. Etiam tempus vel elit eget rutrum. Cras tincidunt massa vitae nisi auctor pretium. Praesent id augue tellus. Duis et interdum orci. Nam sem dui, sodales id facilisis in, tempus vel diam. Mauris sodales hendrerit vehicula. Suspendisse ultrices placerat pellentesque. Nulla vehicula sit amet neque quis mollis. Nullam semper mollis risus, nec malesuada risus egestas at. Mauris vel mauris in arcu scelerisque lobortis id id nisi. Sed vulputate enim et tellus venenatis, at vulputate nisi cursus. Vivamus ultricies, ante fermentum sagittis auctor, nunc purus luctus libero, vitae fermentum diam lorem at augue. Cras ut varius quam. Praesent sit amet dapibus lectus. Integer elementum felis augue, eget elementum magna ornare vel. Nam hendrerit vitae dolor nec pretium. Sed ultricies ut purus in ullamcorper. Suspendisse scelerisque lacus malesuada, condimentum tellus ut, vulputate mauris. Suspendisse scelerisque orci sed orci pulvinar, varius blandit lorem lacinia. Etiam ornare mauris ex, vel imperdiet ante rhoncus ac. Vivamus non tortor et ligula interdum egestas sit amet a nunc. Phasellus ultricies mi at risus laoreet, eu rhoncus justo rhoncus. Nullam nec cursus nulla. Sed at nibh id tortor pellentesque feugiat vitae vitae ex. In porttitor urna vel tincidunt aliquam. Integer tincidunt diam lorem, non mattis sapien aliquam id. Sed volutpat sapien vel justo pharetra dictum. Donec porttitor, tellus sed congue dapibus, nisl eros tempor ipsum, et dictum risus quam quis quam. Donec aliquet placerat velit ut maximus. Vestibulum at ullamcorper nulla. Etiam nec lorem at enim sagittis dapibus. In id justo nec enim condimentum egestas. Fusce id lacus porta, rhoncus felis ac, faucibus ligula. Integer vitae vestibulum odio. Praesent et est sed erat congue convallis sed id sapien. Duis posuere consectetur lectus in consectetur. Quisque quis dui eget nisl convallis porttitor et eget felis. \n \n Praesent non purus justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget magna commodo, ornare diam tincidunt, semper orci. Integer ut urna vehicula, suscipit ante at, feugiat enim. Duis ac lacus non nibh placerat scelerisque. Etiam tempus vel elit eget rutrum. Cras tincidunt massa vitae nisi auctor pretium. Praesent id augue tellus. Duis et interdum orci. Nam sem dui, sodales id facilisis in, tempus vel diam. Mauris sodales hendrerit vehicula. Suspendisse ultrices placerat pellentesque. Nulla vehicula sit amet neque quis mollis. Nullam semper mollis risus, nec malesuada risus egestas at. Mauris vel mauris in arcu scelerisque lobortis id id nisi. Sed vulputate enim et tellus venenatis, at vulputate nisi cursus. Vivamus ultricies, ante fermentum sagittis auctor, nunc purus luctus libero, vitae fermentum diam lorem at augue. Cras ut varius quam. Praesent sit amet dapibus lectus. Integer elementum felis augue, eget elementum magna ornare vel. Nam hendrerit vitae dolor nec pretium. Sed ultricies ut purus in ullamcorper. Suspendisse scelerisque lacus malesuada, condimentum tellus ut, vulputate mauris. Suspendisse scelerisque orci sed orci pulvinar, varius blandit lorem lacinia. Etiam ornare mauris ex, vel imperdiet ante rhoncus ac. Vivamus non tortor et ligula interdum egestas sit amet a nunc. Phasellus ultricies mi at risus laoreet, eu rhoncus justo rhoncus. Nullam nec cursus nulla. Sed at nibh id tortor pellentesque feugiat vitae vitae ex. In porttitor urna vel tincidunt aliquam. Integer tincidunt diam lorem, non mattis sapien aliquam id. Sed volutpat sapien vel justo pharetra dictum. Donec porttitor, tellus sed congue dapibus, nisl eros tempor ipsum, et dictum risus quam quis quam. Donec aliquet placerat velit ut maximus. Vestibulum at ullamcorper nulla. Etiam nec lorem at enim sagittis dapibus. In id justo nec enim condimentum egestas. Fusce id lacus porta, rhoncus felis ac, faucibus ligula. Integer vitae vestibulum odio. Praesent et est sed erat congue convallis sed id sapien. Duis posuere consectetur lectus in consectetur. Quisque quis dui eget nisl convallis porttitor et eget felis. Praesent non purus justo.')

Tutorial.create(id: 3, trainer_id: 3, title: 'How To Teach Down', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget magna commodo, ornare diam tincidunt, semper orci. Integer ut urna vehicula, suscipit ante at, feugiat enim. Duis ac lacus non nibh placerat scelerisque. Etiam tempus vel elit eget rutrum. Cras tincidunt massa vitae nisi auctor pretium. Praesent id augue tellus. Duis et interdum orci. Nam sem dui, sodales id facilisis in, tempus vel diam. Mauris sodales hendrerit vehicula. Suspendisse ultrices placerat pellentesque. Nulla vehicula sit amet neque quis mollis. Nullam semper mollis risus, nec malesuada risus egestas at. Mauris vel mauris in arcu scelerisque lobortis id id nisi. Sed vulputate enim et tellus venenatis, at vulputate nisi cursus. Vivamus ultricies, ante fermentum sagittis auctor, nunc purus luctus libero, vitae fermentum diam lorem at augue. Cras ut varius quam. Praesent sit amet dapibus lectus. Integer elementum felis augue, eget elementum magna ornare vel. Nam hendrerit vitae dolor nec pretium. Sed ultricies ut purus in ullamcorper. Suspendisse scelerisque lacus malesuada, condimentum tellus ut, vulputate mauris. Suspendisse scelerisque orci sed orci pulvinar, varius blandit lorem lacinia. Etiam ornare mauris ex, vel imperdiet ante rhoncus ac. Vivamus non tortor et ligula interdum egestas sit amet a nunc. Phasellus ultricies mi at risus laoreet, eu rhoncus justo rhoncus. Nullam nec cursus nulla. Sed at nibh id tortor pellentesque feugiat vitae vitae ex. In porttitor urna vel tincidunt aliquam. Integer tincidunt diam lorem, non mattis sapien aliquam id. Sed volutpat sapien vel justo pharetra dictum. Donec porttitor, tellus sed congue dapibus, nisl eros tempor ipsum, et dictum risus quam quis quam. Donec aliquet placerat velit ut maximus. Vestibulum at ullamcorper nulla. Etiam nec lorem at enim sagittis dapibus. In id justo nec enim condimentum egestas. Fusce id lacus porta, rhoncus felis ac, faucibus ligula. Integer vitae vestibulum odio. Praesent et est sed erat congue convallis sed id sapien. Duis posuere consectetur lectus in consectetur. Quisque quis dui eget nisl convallis porttitor et eget felis. Praesent non purus justo.')

Tutorial.create(id: 4, trainer_id: 1, title: 'How To Train Heel', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget magna commodo, ornare diam tincidunt, semper orci. Integer ut urna vehicula, suscipit ante at, feugiat enim. Duis ac lacus non nibh placerat scelerisque. Etiam tempus vel elit eget rutrum. Cras tincidunt massa vitae nisi auctor pretium. Praesent id augue tellus. Duis et interdum orci. Nam sem dui, sodales id facilisis in, tempus vel diam. Mauris sodales hendrerit vehicula. Suspendisse ultrices placerat pellentesque. Nulla vehicula sit amet neque quis mollis. Nullam semper mollis risus, nec malesuada risus egestas at. Mauris vel mauris in arcu scelerisque lobortis id id nisi. Sed vulputate enim et tellus venenatis, at vulputate nisi cursus. Vivamus ultricies, ante fermentum sagittis auctor, nunc purus luctus libero, vitae fermentum diam lorem at augue. Cras ut varius quam. Praesent sit amet dapibus lectus. Integer elementum felis augue, eget elementum magna ornare vel. Nam hendrerit vitae dolor nec pretium. Sed ultricies ut purus in ullamcorper. Suspendisse scelerisque lacus malesuada, condimentum tellus ut, vulputate mauris. Suspendisse scelerisque orci sed orci pulvinar, varius blandit lorem lacinia. Etiam ornare mauris ex, vel imperdiet ante rhoncus ac. Vivamus non tortor et ligula interdum egestas sit amet a nunc. Phasellus ultricies mi at risus laoreet, eu rhoncus justo rhoncus. Nullam nec cursus nulla. Sed at nibh id tortor pellentesque feugiat vitae vitae ex. In porttitor urna vel tincidunt aliquam. Integer tincidunt diam lorem, non mattis sapien aliquam id. Sed volutpat sapien vel justo pharetra dictum. Donec porttitor, tellus sed congue dapibus, nisl eros tempor ipsum, et dictum risus quam quis quam. Donec aliquet placerat velit ut maximus. Vestibulum at ullamcorper nulla. Etiam nec lorem at enim sagittis dapibus. In id justo nec enim condimentum egestas. Fusce id lacus porta, rhoncus felis ac, faucibus ligula. Integer vitae vestibulum odio. Praesent et est sed erat congue convallis sed id sapien. Duis posuere consectetur lectus in consectetur. Quisque quis dui eget nisl convallis porttitor et eget felis. Praesent non purus justo.')
