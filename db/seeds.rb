# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.delete_all
#...
Post.create([
{:title => 'Sherpa - A platform for learning and sharing information about agile development practices and the agile community. ',:url =>'http://www.agilesherpa.org/', :user_id  => 1},
{:title => 'Testing Overview - Elisabeth Hendrickson ',:url => 'http://testobsessed.com/wp-content/uploads/2011/04/AgileTestingOverview.pdf/', :user_id  => 1},
{:title => 'DevJam - David Hussman ',:url => 'http://devjam.com/', :user_id  => 1},
{:title => 'Three Rivers Institute - Kent Beck ',:url => 'http://www.threeriversinstitute.org/', :user_id  => 1},
{:title => 'Think Different Shifting organisations to a better place - Bob Marshall ',:url => 'http://flowchainsensei.wordpress.com/', :user_id  => 1},
{:title => 'AgileCoachCamp Wiki ',:url => 'http://agilecoachcamp.org/', :user_id  => 1},
{:title => 'AgileProductDesign.com - Jeff Patton ',:url => 'http://www.agileproductdesign.com/', :user_id  => 1},
{:title => 'Agile Developer - Venkat Subramaniam ',:url => 'http://www.agiledeveloper.com/', :user_id  => 1},
{:title => 'Agile in a Flash: Simple Design ',:url => 'http://agileinaflash.blogspot.com/2009/02/simple-design.html/', :user_id  => 1},
{:title => 'Tips on organizing an Agile Open Space - Agile ',:url => 'http://agilecoach.typepad.com/agile-coaching/2010/04/tips-on-organizing-an-agile-open-space.html/', :user_id  => 1},
{:title => 'Presentations and Articles by Venkat Subramaniam ',:url => 'http://www.agiledeveloper.com/downloads.html/', :user_id  => 1},
{:title => 'InfoQ: Understanding Legacy Code with Characterization Testing ',:url => 'http://www.infoq.com/news/2007/03/characterization-testing/', :user_id  => 1},
{:title => 'agile faqs - Naresh Jain ',:url => 'http://agilefaqs.com/', :user_id  => 1},
{:title => 'Alister Cockburn (pronounced Co-burn, the Scottish way ',:url => 'http://alistair.cockburn.us/', :user_id  => 1},
{:title => 'Manifesto for Agile Software Development ',:url => 'http://agilemanifesto.org/', :user_id  => 1},
{:title => 'Vendor: Rally Software ',:url => 'http://www.rallydev.com/', :user_id  => 1},
{:title => 'Vendor: Version One ',:url => 'http://www.versionone.com/', :user_id  => 1},
{:title => 'Agile Toolkit Podcast - Conversations about Agile Development and Delivery ',:url => 'http://agiletoolkit.libsyn.com/', :user_id  => 1},
{:title => 'Ward Cunningham speaking to audience at Agile Day 2011 ',:url => 'http://c2.com/~ward/AgileDayTwinCities2011.mov/', :user_id  => 1},
{:title => 'InfoQ - Agile Community Content ',:url => 'http://www.infoq.com/agile/?utm_source=infoq&utm_medium=header_graybar&utm_campaign=topic_clk/', :user_id  => 1},
{:title => 'WritersUA - Agile Technical Documentation ',:url => 'http://www.writersua.com/articles/Agile_doc/index.html#Conclusion and Key Takeaways/', :user_id  => 1},
{:title => 'InfoQ: David Hussman on Helping Organizations Adopt Agile ',:url => 'http://www.infoq.com/interviews/interview-david-hussman-agile/', :user_id  => 1},
{:title => 'Esther Derby ',:url => 'http://www.estherderby.com/', :user_id  => 1},
{:title => 'Agile Coach Performance Management: Measure Yourself as a Coach, Not as a Manager ',:url => 'http://www.agilejournal.com/articles/columns/column-articles/3160-agile-coach-performance-management-measure-yourself-as-a-coach-not-as-a-manager/', :user_id  => 1},
{:title => 'Simple Design and Testing Conference ',:url => 'http://sdtconf.com/faqs.htm/', :user_id  => 1},
{:title => 'Do Testers Have to Write Code? - Elisabeth Hendrickson ',:url => 'http://testobsessed.com/2010/10/testers-code/', :user_id  => 1},
{:title => 'Matt Wynne Blog - Tea-Driven Development ',:url => 'http://blog.mattwynne.net/', :user_id  => 1},
{:title => 'Prioritizing the Product Backlog ',:url => 'http://agilesoftwaredevelopment.com/blog/peterstev/prioritizing-product-backlog/', 
:user_id  => 1},
{:title => 'TorqueBox - a Ruby Application Server (slide deck) ',:url => 'http://www.slideshare.net/lanceball/complex-made-simple-sleep-better-with-torquebox-12718812/', :user_id  => 1},
{:title => 'The top six technical practices every Product Owner must know about ',:url => 'http://www.citerus.se/post/1165683-the-top-six-technical-practices-every/', :user_id  => 1},
{:title => 'TDD and Automated Testing - Elisabeth Hendrickson ',:url => 'http://testobsessed.com/2007/10/from-the-mailbox-tdd-and-automated-testing/', :user_id  => 1},
{:title => 'Collection of our current and past contributions to the world of software development and the agile/xp community. - Industrial Logic ',:url => 'http://www.industriallogic.com/papers/', :user_id  => 1},
{:title => 'Liz Keogh blog - ATDD vs. BDD, and a potted history of some related stuff ',:url => 'http://lizkeogh.com/2011/06/27/atdd-vs-bdd-and-a-potted-history-of-some-related-stuff/', :user_id  => 1},
{:title => 'Introducing BDD - DanNorth.net ',:url => 'http://dannorth.net/introducing-bdd/', :user_id  => 1},
{:title => 'The Art of Agile - James Shore ',:url => 'http://www.jamesshore.com/Agile-Book/release_planning.html/', :user_id  => 1},
])

