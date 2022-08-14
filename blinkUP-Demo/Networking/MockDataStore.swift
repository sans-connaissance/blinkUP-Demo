//
//  MockDataStore.swift
//  blinkUP-Demo
//
//  Created by David Malicke on 8/9/22.
//

import Foundation

let mockGroups: [Group] = [bLinkupTeam, sanDiegoStateAztecs, alabamaCrimsonTide]
let mockFriends: [Friend] = [daveMalicke, willBott, danGiralte, joeFinney]

let bLinkupTeam = Group(
    id: 1,
    name: "bLinkup Team",
    image: "person.3",
    shortDescription: "Members of the bLinkup production team.",
    longDescription: "Members of the bLinkup production team. In ligula diam, cursus lobortis sollicitudin ut, vulputate at nunc. Cras posuere tortor at commodo laoreet. Ut vel faucibus enim. Donec tincidunt viverra tortor, a consequat orci condimentum sed. Suspendisse lacinia mollis tincidunt. Donec efficitur neque orci, nec ultrices mauris pharetra vel.",
    message: [message2, message3, message4],
    members: [willBott, joeFinney, danGiralte, daveMalicke],
    meetUps: [meetup4, meetup3])


let sanDiegoStateAztecs = Group(
    id: 2,
    name: "San Diego State Aztecs Fans",
    image: "sun.haze",
    shortDescription: "Fans of the SDSU Aztecs.",
    longDescription: "In ligula diam, cursus lobortis sollicitudin ut, vulputate at nunc. Cras posuere tortor at commodo laoreet. Ut vel faucibus enim. Donec tincidunt viverra tortor, a consequat orci condimentum sed. Suspendisse lacinia mollis tincidunt. Donec efficitur neque orci, nec ultrices mauris pharetra vel.",
    message: [message5, message6],
    members: [willBott, joeFinney, danGiralte, daveMalicke],
    meetUps: [meetup5, meetup2])


let alabamaCrimsonTide = Group(
    id: 3,
    name: "Crimson Tide Football fans",
    image: "camera.macro",
    shortDescription: "Fans of the Crimpson Tide.",
    longDescription: "In ligula diam, cursus lobortis sollicitudin ut, vulputate at nunc. Cras posuere tortor at commodo laoreet. Ut vel faucibus enim. Donec tincidunt viverra tortor, a consequat orci condimentum sed. Suspendisse lacinia mollis tincidunt. Donec efficitur neque orci, nec ultrices mauris pharetra vel.",
    message: [message1],
    members: [willBott, joeFinney, danGiralte, daveMalicke],
    meetUps: [meetup1, meetup6])




let message1 = Message(
    id: 1,
    message: "Hey, we are at Steve's house. Come on over.",
    likes: 3,
    postedBy: nil)

let message2 = Message(
    id: 2,
    message: "Is anyone bringing pizza rolls?",
    likes: 100,
    postedBy: nil)

let message3 = Message(
    id: 3,
    message: "Yes.",
    likes: 100,
    postedBy: nil)

let message4 = Message(
    id: 4,
    message: "Who's bringing the Ann Arbor Artisanal Ranch?",
    likes: 100,
    postedBy: nil)

let message5 = Message(
    id: 5,
    message: "Hey did you know Brady Hoke used to coach at the University of Michigan?",
    likes: 100,
    postedBy: nil)

let message6 = Message(
    id: 6,
    message: "Brady Hoke is wearing a headset!!???",
    likes: 100,
    postedBy: nil)


let meetup1 = MeetUp(
    id: 1,
    name: "ESPN GameDay Party",
    description: "Meeting at Steve's to watch the big game.",
    numberOfAttendees: 5)

let meetup2 = MeetUp(
    id: 2,
    name: "Dodgeball tournament",
    description: "Dodgeball tournament live on The Ocho.",
    numberOfAttendees: 5)

let meetup3 = MeetUp(
    id: 3,
    name: "Katie's Birthday party",
    description: "Celebrating Katie's birthday.",
    numberOfAttendees: 5)

let meetup4 = MeetUp(
    id: 4,
    name: "1 millionth user registration celebration",
    description: "A party to celebrate 1 million users!! ",
    numberOfAttendees: 5)

let meetup5 = MeetUp(
    id: 5,
    name: "A discussion of Kant's Moral Philosophy",
    description: "Like what is the Categorical Imperative anyways?",
    numberOfAttendees: 5)

let meetup6 = MeetUp(
    id: 6,
    name: "Orange Roll Backing Class",
    description: "Made from a semi-secret recipe, these sticky, slightly buttery, sweet rolls are topped with tangy orange glaze instead of the classic sugar coating. ",
    numberOfAttendees: 5)


let daveMalicke = Friend(
    id: 1,
    image: "person.fill",
    displayName: "Dave",
    fullName: "Dave Malicke",
    distanceAway: 0.25,
    memberGroups: nil,
    managedGroups: nil)

let willBott = Friend(
    id: 2,
    image: "person.fill",
    displayName: "Will",
    fullName: "Will Bott",
    distanceAway: 0.25,
    memberGroups: nil,
    managedGroups: nil)

let danGiralte = Friend(
    id: 3,
    image: "person.fill",
    displayName: "Dan",
    fullName: "Dan Giralte",
    distanceAway: 0.25,
    memberGroups: nil,
    managedGroups: nil)

let joeFinney = Friend(
    id: 4,
    image: "person.fill",
    displayName: "Joe",
    fullName: "Joe Finney",
    distanceAway: 0.25,
    memberGroups: nil,
    managedGroups: nil)
