# frozen_string_literal: true

class ModernEvents < ActiveRecord::Migration[7.1]
  def up
    User.create(email: 'info@family-scribe.com', first_name: 'Shared', last_name: 'Events')

    Event.create(user_id: 1, name: 'World War I', start: '1914-07-28', end: '1918-11-11')
    Event.create(user_id: 1, name: 'World War II', start: '1939-09-01', end: '1945-09-02')
    Event.create(user_id: 1, name: 'World Trade Center attack', start: '2001-09-11')
    Event.create(user_id: 1, name: 'Fall of the Berlin Wall', start: '1989-11-09')
    Event.create(user_id: 1, name: 'Apollo 11 Moon Landing', start: '1969-07-20')
    Event.create(user_id: 1, name: 'Assassination of John F. Kennedy', start: '1963-11-22')
    Event.create(user_id: 1, name: 'Assassination Attempt on President Trump', start: '2024-07-13')
    Event.create(user_id: 1, name: 'Indian Independence', start: '1947-08-15')
    Event.create(user_id: 1, name: 'Nelson Mandela released from prison', start: '1990-02-11')
    Event.create(user_id: 1, name: 'Chernobyl Disaster', start: '1986-04-26')
    Event.create(user_id: 1, name: 'Cuban Missile Crisis', start: '1962-10-16', end: '1962-10-28')
    Event.create(user_id: 1, name: 'Brexit', start: '2020-01-31')
    Event.create(user_id: 1, name: 'COVID-19 Pandemic declared', start: '2020-03-11')
    Event.create(user_id: 1, name: 'Signing of the Paris Agreement', start: '2016-04-22')
    Event.create(user_id: 1, name: 'Arab Spring begins', start: '2010-12-18')
    Event.create(user_id: 1, name: 'Collapse of the Soviet Union', start: '1991-12-26')
    Event.create(user_id: 1, name: 'Rwandan Genocide', start: '1994-04-07', end: '1994-07-15')
    Event.create(user_id: 1, name: 'First Human Genome Sequenced', start: '2003-04-14')
    Event.create(user_id: 1, name: 'Tiananmen Square protests', start: '1989-04-15', end: '1989-06-04')
    Event.create(user_id: 1, name: 'Fukushima Nuclear Disaster', start: '2011-03-11')
    Event.create(user_id: 1, name: 'End of Apartheid in South Africa', start: '1994-04-27')
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
