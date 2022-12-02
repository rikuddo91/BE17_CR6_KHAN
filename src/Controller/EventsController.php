<?php

namespace App\Controller;

use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use DateTime;
use App\Entity\Events;
use App\Form\EventsType;

class EventsController extends AbstractController
{
  #[Route('/', name: 'events')]
  public function index(ManagerRegistry $doctrine): Response
  {
    $events = $doctrine->getRepository(Events::class)->findAll();
    return $this->render('events/index.html.twig', ['events' => $events]);
  }

  #[Route('/create', name: 'events_create')]
  public function create(Request $request, ManagerRegistry $doctrine): Response
  {
    $events = new Events();
    $form = $this->createForm(EventsType::class, $events);

    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {
      // $now = new \DateTime('now');
      $events = $form->getData();
      // $events->setCreateDate($now);
      $em = $doctrine->getManager();
      $em->persist($events);
      $em->flush();

      $this->addFlash(
        'notice',
        'New event has been added'
      );

      return $this->redirectToRoute('events');
    }
    /* now to make the form we will add this line form->createView() and now you can see the form in create.html.twig file  */
    return $this->render('events/create.html.twig', ['form' => $form->createView()]);
  }

  #[Route('/edit/{id}', name: 'events_edit')]
  public function edit(Request $request, ManagerRegistry $doctrine, $id): Response
  {
    $events = $doctrine->getRepository(Events::class)->find($id);
    $form = $this->createForm(EventsType::class, $events);
    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {
      //   $now = new \DateTime('now');
      $events = $form->getData();
      //   $events->setCreateDate($now);
      $em = $doctrine->getManager();
      $em->persist($events);
      $em->flush();
      $this->addFlash(
        'notice',
        'This event info has been edited'
      );

      return $this->redirectToRoute('events');
    }

    return $this->render('events/edit.html.twig', ['form' => $form->createView()]);
  }

  #[Route('/details/{id}', name: 'events_details')]
  public function details(ManagerRegistry $doctrine, $id): Response
  {
    $events = $doctrine->getRepository(Events::class)->find($id);

    return $this->render('events/details.html.twig', ['events' => $events]);
  }

  #[Route('/delete/{id}', name: 'events_delete')]
  public function delete($id, ManagerRegistry $doctrine): Response
  {
    $events = $doctrine->getManager()->getRepository(Events::class)->find($id);
    $em = $doctrine->getManager();
    $em->remove($events);

    $em->flush();
    $this->addFlash(
      'notice',
      'This event has been removed'
    );

    return $this->redirectToRoute('events');
  }


  //    Bonus points

  #[Route('/eventtype/{eventtype}', name: 'events_type')]
  public function eventType($eventtype, ManagerRegistry $doctrine): Response
  {
    $events = $doctrine->getManager()->getRepository(Events::class)->findBy(['eventtype' => $eventtype]);

    if (!$events) {
      $this->addFlash(
        'notice',
        "The type of event '$eventtype' doesn´t exist"
      );

      return $this->redirectToRoute('events');
    }
    return $this->render('events/eventtype.html.twig', ['eventtype' => $events]);
  }
}
