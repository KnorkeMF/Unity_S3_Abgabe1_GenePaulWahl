using System;
using UnityEngine;
using UnityEngine.InputSystem;

public class DialogueTrigger : MonoBehaviour
{
    [SerializeField] private GameObject highlight;
    [SerializeField] private DialogueController dialogueController;
    
    private bool canInteract = false;
    private bool hasTriggeredDialogue = false; // <-- NEU
    

    void Start()
    {
        highlight.SetActive(false);
        dialogueController = FindObjectOfType<DialogueController>();
    }

    void Update()
    {
        if (!hasTriggeredDialogue && canInteract && Keyboard.current.eKey.wasPressedThisFrame)
        {
            dialogueController.StartDialogue();
            hasTriggeredDialogue = true;      // <-- verhindert, dass der Dialog erneut startet
            highlight.SetActive(false);       // <-- highlight dauerhaft aus
        }
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (!hasTriggeredDialogue)           // <-- nur anzeigen, wenn der Dialog noch nicht getriggert wurde
        {
            highlight.SetActive(true);
            canInteract = true;
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        highlight.SetActive(false);
        canInteract = false;
    }
}

